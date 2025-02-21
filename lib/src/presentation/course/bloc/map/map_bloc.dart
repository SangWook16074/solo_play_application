import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/course/models/map_model.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_event.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final MapModel mapModel;
  MapBloc({required this.mapModel}) : super(MapState(mapModel: mapModel)) {
    on<MapMoveEvent>(_moveTo);
  }

  void _moveTo(MapMoveEvent event, Emitter<MapState> emit) {
    emit(state.copyWith(mapModel: event.mapModel));
  }

  @override
  void onChange(Change<MapState> change) {
    debugPrint(
        "curr MapModel State: ${change.currentState}\nnext MapModel State ${change.nextState}");
    super.onChange(change);
  }
}
