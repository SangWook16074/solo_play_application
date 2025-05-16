import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/course/cubits/level_cubit.dart';
import 'package:solo_play_application/src/features/course/cubits/region_detail_cubit.dart';
import 'package:solo_play_application/src/features/course/cubits/region_detail_view_state.dart';
import 'package:solo_play_application/src/features/course/presentation/view/level_select_view.dart';
import 'package:solo_play_application/src/features/course/presentation/widget/hexagon_grid.dart';

class RegionDetailView extends StatefulWidget {
  const RegionDetailView({
    super.key,
  });

  @override
  State<RegionDetailView> createState() => _RegionDetailViewState();
}

class _RegionDetailViewState extends State<RegionDetailView> {
  late TransformationController _controller;
  final GlobalKey _childKey = GlobalKey();
  final GlobalKey _parentsKey = GlobalKey();
  final double _initialScale = 1.0;
  late double _currScale;

  void _centerContent() {
    // 전체 지도 제약 조건
    final RenderBox renderBox =
        _childKey.currentContext!.findRenderObject() as RenderBox;
    final Size contentSize = renderBox.size;

    final RenderBox viewportBox =
        _parentsKey.currentContext!.findRenderObject() as RenderBox;
    final Size viewportSize = viewportBox.size;

    // 가운데 좌표 계산
    final double dx =
        -(contentSize.width - viewportSize.width) * _initialScale / 2;
    final double dy =
        -(contentSize.height - viewportSize.height) * _initialScale / 2;
    // 이동
    _controller.value = Matrix4.identity()
      ..translate(dx, dy)
      ..scale(_currScale);
  }

  _onDoubleTapDown(TapDownDetails details) {
    final currOffset = _controller.toScene(details.localPosition);
    final cubit = context.read<RegionDetailCubit>();
    final state = cubit.state;
    final nearMap = state.region.nearArea;
    for (var entry in nearMap.entries) {
      for (var local in entry.value) {
        final x = local.x;
        final y = local.y;
        const radius = 71.5;
        const space = 4.0;
        final center = local.center(x, y, radius, 30);
        final path = local.getHexagonPath(
            radius: radius, space: space, center: center, borderRadius: 10.0);
        if (path.contains(currOffset)) {
          final dest = entry.key;
          cubit.moveTo(dest);
          log("이동!");
        }
      }
    }
  }

  @override
  void initState() {
    _controller = TransformationController();
    WidgetsBinding.instance.addPostFrameCallback((_) => _centerContent());
    _currScale = _initialScale;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant RegionDetailView oldWidget) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _centerContent());
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = context
        .select<RegionDetailCubit, String>((ref) => ref.state.region.label);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$title권",
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size(double.maxFinite, 58), child: _header()),
      ),
      extendBodyBehindAppBar: true,
      body: Center(child: _map()),
    );
  }

  Widget _header() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "솔플레벨 선택하기",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          BlocBuilder<LevelCubit, int>(
            builder: (context, state) {
              return LevelSelectView(
                  selectIndex: state,
                  onChanged: context.read<LevelCubit>().changeIndex);
            },
          )
        ],
      );

  Widget _map() {
    return LayoutBuilder(builder: (context, constraints) {
      return InteractiveViewer(
        panEnabled: true,
        key: _parentsKey,
        constrained: false,
        transformationController: _controller,
        minScale: 1.0,
        maxScale: 2.0,
        onInteractionEnd: (details) {
          _currScale = details.scaleVelocity;
        },
        child: SizedBox(
          width: constraints.maxWidth + 100,
          height: constraints.maxHeight + 100,
          child: Center(
            child: GestureDetector(
              onDoubleTapDown: _onDoubleTapDown,
              child: BlocBuilder<RegionDetailCubit, RegionDetailViewState>(
                builder: (context, state) {
                  final region = state.region;
                  final nearArea = region.nearArea;
                  return HexagonGrid(key: _childKey, space: 4.0, offsets: [
                    ...region.region.map(
                        (tile) => tile.copy(color: const Color(0xff8DCCFF))),
                    for (var near in nearArea.entries)
                      ...near.value.map(
                          (tile) => tile.copy(color: const Color(0xffeeeeee))),
                  ]);
                },
              ),
            ),
          ),
        ),
      );
    });
  }
}
