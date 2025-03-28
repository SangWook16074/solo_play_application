import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:solo_play_application/src/core/region_map.dart';
import 'package:solo_play_application/src/core/route/go_router_builder.dart';
import 'package:solo_play_application/src/presentation/course/bloc/region_bloc.dart';
import 'package:solo_play_application/src/presentation/course/bloc/region_view_event.dart';
import 'package:solo_play_application/src/presentation/course/bloc/region_view_state.dart';
import 'package:solo_play_application/src/presentation/course/models/region.dart';
import 'package:solo_play_application/src/presentation/course/page/region_detail_page.dart';
import 'package:solo_play_application/src/presentation/course/widget/hexagon_grid.dart';
import 'package:solo_play_application/src/presentation/course/widget/region_label.dart';

class RegionView extends StatefulWidget {
  const RegionView({super.key});

  @override
  State<RegionView> createState() => _RegionViewState();
}

class _RegionViewState extends State<RegionView> {
  late final TransformationController _controller;
  final GlobalKey _contentKey = GlobalKey();
  final GlobalKey _viewportKey = GlobalKey();
  final double _initialScale = 1.0;
  final RegionMap _regionPaths = {};

  @override
  void initState() {
    _controller = TransformationController();
    WidgetsBinding.instance.addPostFrameCallback((_) => _centerContent());
    for (Region region in Region.values) {
      final List<Path> paths = region.getPaths(region,
          radius: 71.5, borderRadius: 0, distance: 30, space: 4.0);
      _regionPaths[region] = paths;
    }
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// 초기 위치를 지정하는 함수
  /// 전체 지도에서 가장 가운데 좌표로 시점을 이동함.
  void _centerContent() {
    // 전체 지도 제약 조건
    final RenderBox renderBox =
        _contentKey.currentContext!.findRenderObject() as RenderBox;
    final Size contentSize = renderBox.size;

    final RenderBox viewportBox =
        _viewportKey.currentContext!.findRenderObject() as RenderBox;
    final Size viewportSize = viewportBox.size;

    // 가운데 좌표 계산
    final double dx =
        -(contentSize.width - viewportSize.width) * _initialScale / 2;
    final double dy =
        -(contentSize.height - viewportSize.height) * _initialScale / 2;
    // 이동
    _controller.value = Matrix4.identity()
      ..translate(dx, dy)
      ..scale(_initialScale);
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RegionViewBloc>();
    final state = viewModel.state;
    return GestureDetector(onDoubleTapDown: (details) {
      final realOffset = _controller.toScene(details.localPosition);
      for (var (entry) in _regionPaths.entries) {
        for (Path path in entry.value) {
          if (path.contains(realOffset)) {
            viewModel.add(FocusEvent(region: entry.key));
            RegionDetailRoute(region: entry.key).go(context);
          }
        }
      }
    }, onTapDown: (details) {
      final realOffset = _controller.toScene(details.localPosition);
      for (var entry in _regionPaths.entries) {
        for (Path path in entry.value) {
          if (path.contains(realOffset)) {
            if (state is RegionSelect) {
              final currMap = state.region;
              if (currMap == entry.key) {
                viewModel.add(UnFocusEvent());
                return;
              } else {
                viewModel.add(FocusEvent(region: entry.key));

                return;
              }
            } else {
              viewModel.add(FocusEvent(region: entry.key));

              return;
            }
          }
        }
      }
      viewModel.add(UnFocusEvent());
    }, child: BlocBuilder<RegionViewBloc, RegionViewState>(
      builder: (context, state) {
        Region? currMap;
        if (state is RegionSelect) {
          currMap = state.region;
        }

        return InteractiveViewer(
            key: _viewportKey,
            transformationController: _controller,
            constrained: false,
            minScale: 0.1,
            maxScale: 1.7,
            child: FittedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  HexagonGrid(
                    key: _contentKey,
                    space: 4.0,
                    offsets: [
                      for (var region in Region.values)
                        ..._buildMap(region,
                            state is RegionUnSelect || currMap == region),
                    ],
                  ),
                  for (var region in Region.values)
                    _buildLabel(
                        region: region,
                        isSelected:
                            (state is RegionUnSelect || currMap == region))
                ],
              ),
            ));
      },
    ));
  }

  List<HexagonPosition> _buildMap(Region region, bool isSelected) {
    return Region.getMap(region)
        .map((it) => it.copy(
            color: isSelected ? region.color : region.color.withOpacity(0.7)))
        .toList();
  }

  Widget _buildLabel({
    required Region region,
    required bool isSelected,
  }) {
    return (isSelected)
        ? Positioned(
            top: region.offset.dx,
            left: region.offset.dy,
            child: RegionLabel(
                label: "${region.label}권", borderColor: region.color))
        : Container();
  }
}
