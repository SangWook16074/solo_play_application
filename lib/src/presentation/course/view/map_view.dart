import 'package:flutter/material.dart';
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
  final Map<MapModel, List<Path>> _regionPaths = {};

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
    return GestureDetector(
        onDoubleTapDown: (details) {
          final realOffset = _controller.toScene(details.localPosition);
          for (var entry in _regionPaths.entries) {
            for (Path path in entry.value) {
              if (path.contains(realOffset)) {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => MapDetailPage(mapModel: entry.key)));
              }
            }
          }
        },
        child: InteractiveViewer(
            key: _viewportKey,
            transformationController: _controller,
            constrained: false,
            minScale: 0.1,
            maxScale: 1.7,
            child: FittedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [_mapGrid(), ..._labels()],
              ),
            )));
  }

  Widget _mapGrid() => HexagonGrid(
        key: _contentKey,
        space: 4.0,
        offsets: [
          ...MapModel.getMap(MapModel.dosim)
              .map((it) => it.copy(color: const Color(0xffF791A9))),
          ...MapModel.getMap(MapModel.gangbuk)
              .map((it) => it.copy(color: const Color(0xffFFDBDF))),
          ...MapModel.getMap(MapModel.dongseoul)
              .map((it) => it.copy(color: const Color(0xffFFE797))),
          ...MapModel.getMap(MapModel.seonam)
              .map((it) => it.copy(color: const Color(0xffDDDD7B))),
          ...MapModel.getMap(MapModel.namseoul)
              .map((it) => it.copy(color: const Color(0xffC8EDF1))),
          ...MapModel.getMap(MapModel.gangnam)
              .map((it) => it.copy(color: const Color(0xffBAD6DA))),
          ...MapModel.getMap(MapModel.dongnam)
              .map((it) => it.copy(color: const Color(0xff86C9CA))),
        ],
      );

  List<Widget> _labels() => [
        // 도심권
        Positioned(
            top: 360,
            left: 463,
            child: RegionLabel(
                label: "도심권", borderColor: const Color(0xffF791A9))),
        // 강북권
        Positioned(
            top: 120,
            left: 570,
            child: RegionLabel(
                label: "강북권", borderColor: const Color(0xffFFDBDF))),
        // 동서울권
        Positioned(
            top: 330,
            left: 720,
            child: RegionLabel(
                label: "동서울권", borderColor: const Color(0xffFFE797))),
        // 서남권
        Positioned(
            top: 500,
            left: 190,
            child: RegionLabel(
                label: "서남권", borderColor: const Color(0xffDDDD7B))),
        // 남서울권
        Positioned(
            top: 650,
            left: 350,
            child: RegionLabel(
                label: "남서울권", borderColor: const Color(0xffC8EDF1))),
        // 강남권
        Positioned(
            top: 550,
            left: 620,
            child: RegionLabel(
                label: "강남권", borderColor: const Color(0xffBAD6DA))),
        // 동남권
        Positioned(
            top: 550,
            left: 850,
            child: RegionLabel(
                label: "동남권", borderColor: const Color(0xff86C9CA))),
      ];
}
