import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solo_play_application/src/presentation/course/models/map_model.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_bloc.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_event.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_state.dart';

void main() {
  late MapBloc mapBloc;

  setUp(() {
    mapBloc = MapBloc(mapModel: MapModel.gangbuk);
  });

  test("Map Bloc의 초기 상태는 MapType.gangbuk이다.", () {
    final initMap = mapBloc.state.mapModel;
    expect(initMap, MapModel.gangbuk);
  });

  blocTest("MapMoveEvent를 통해서 MapModel.dosim을 방출한다.",
      build: () => mapBloc,
      act: (bloc) => bloc.add(MapMoveEvent(mapModel: MapModel.dosim)),
      expect: () => [const MapState(mapModel: MapModel.dosim)]);

  blocTest("MapMoveEvent를 통해서 MapModel.dongnam을 방출한다.",
      build: () => mapBloc,
      act: (bloc) => bloc.add(MapMoveEvent(mapModel: MapModel.dongnam)),
      expect: () => [const MapState(mapModel: MapModel.dongnam)]);

  blocTest("MapMoveEvent를 통해서 MapModel.dongseoul 방출한다.",
      build: () => mapBloc,
      act: (bloc) => bloc.add(MapMoveEvent(mapModel: MapModel.dongseoul)),
      expect: () => [const MapState(mapModel: MapModel.dongseoul)]);

  blocTest("MapMoveEvent를 통해서 MapModel.gangnam 방출한다.",
      build: () => mapBloc,
      act: (bloc) => bloc.add(MapMoveEvent(mapModel: MapModel.gangnam)),
      expect: () => [const MapState(mapModel: MapModel.gangnam)]);

  blocTest("MapMoveEvent를 통해서 MapModel.namseoul 방출한다.",
      build: () => mapBloc,
      act: (bloc) => bloc.add(MapMoveEvent(mapModel: MapModel.namseoul)),
      expect: () => [const MapState(mapModel: MapModel.namseoul)]);

  blocTest("MapMoveEvent를 통해서 MapModel.seonam 방출한다.",
      build: () => mapBloc,
      act: (bloc) => bloc.add(MapMoveEvent(mapModel: MapModel.seonam)),
      expect: () => [const MapState(mapModel: MapModel.seonam)]);

  blocTest("MapMoveEvent를 통해서 MapModel.gangbuk 방출한다.",
      build: () => mapBloc,
      act: (bloc) => bloc.add(MapMoveEvent(mapModel: MapModel.gangbuk)),
      expect: () => [const MapState(mapModel: MapModel.gangbuk)]);

  blocTest(
    "복잡한 emit이 가능하다.",
    build: () => mapBloc,
    act: (bloc) {
      bloc.add(MapMoveEvent(mapModel: MapModel.seonam));
      bloc.add(MapMoveEvent(mapModel: MapModel.dongnam));
      bloc.add(MapMoveEvent(mapModel: MapModel.gangbuk));
    },
    expect: () => [
      const MapState(mapModel: MapModel.seonam),
      const MapState(mapModel: MapModel.dongnam),
      const MapState(mapModel: MapModel.gangbuk),
    ],
  );
}
