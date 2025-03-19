import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/region_map.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_bloc.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_event.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_state.dart';
import 'package:solo_play_application/src/presentation/course/models/map_model.dart';
import 'package:solo_play_application/src/presentation/course/page/map_detail_page.dart';
import 'package:solo_play_application/src/presentation/course/widget/hexagon_grid.dart';
import 'package:solo_play_application/src/presentation/course/widget/region_label.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late final TransformationController _controller;
  final GlobalKey _contentKey = GlobalKey();
  final GlobalKey _viewportKey = GlobalKey();
  final double _initialScale = 1.0;
  final RegionMap _regionPaths = {};

  @override
  void initState() {
    _controller = TransformationController();
    WidgetsBinding.instance.addPostFrameCallback((_) => _centerContent());
    for (MapModel model in MapModel.values) {
      final List<Path> paths = model.getPaths(model,
          radius: 71.5, borderRadius: 0, distance: 30, space: 4.0);
      _regionPaths[model] = paths;
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
    final viewModel = context.watch<MapBloc>();
    final state = viewModel.state;
    return GestureDetector(onDoubleTapDown: (details) {
      final realOffset = _controller.toScene(details.localPosition);
      for (var (entry) in _regionPaths.entries) {
        for (Path path in entry.value) {
          if (path.contains(realOffset)) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => MapDetailPage(mapModel: entry.key)));
          }
        }
      }
    }, onTapDown: (details) {
      final realOffset = _controller.toScene(details.localPosition);
      for (var entry in _regionPaths.entries) {
        for (Path path in entry.value) {
          if (path.contains(realOffset)) {
            if (state is MapSelect) {
              final currMap = state.mapModel;
              if (currMap == entry.key) {
                viewModel.add(MapUnFocusEvent());
                return;
              } else {
                viewModel.add(MapFocusEvent(mapModel: entry.key));

                return;
              }
            } else {
              viewModel.add(MapFocusEvent(mapModel: entry.key));

              return;
            }
          }
        }
      }
      viewModel.add(MapUnFocusEvent());
    }, child: BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        MapModel? currMap;
        if (state is MapSelect) {
          currMap = state.mapModel;
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
                      for (var mapModel in MapModel.values)
                        ..._buildMap(mapModel,
                            state is MapUnSelect || currMap == mapModel),
                    ],
                  ),
                  for (var mapModel in MapModel.values)
                    _buildLabel(
                        mapModel: mapModel,
                        isSelected:
                            (state is MapUnSelect || currMap == mapModel))
                ],
              ),
            ));
      },
    ));
  }

  List<HexagonPosition> _buildMap(MapModel mapModel, bool isSelected) {
    return MapModel.getMap(mapModel)
        .map((it) => it.copy(
            color:
                isSelected ? mapModel.color : mapModel.color.withOpacity(0.7)))
        .toList();
  }

  Widget _buildLabel({
    required MapModel mapModel,
    required bool isSelected,
  }) {
    return (isSelected)
        ? Positioned(
            top: mapModel.offset.dx,
            left: mapModel.offset.dy,
            child: RegionLabel(
                label: "${mapModel.label}권", borderColor: mapModel.color))
        : Container();
  }
}
