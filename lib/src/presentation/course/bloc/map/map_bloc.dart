import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_event.dart';
import 'package:solo_play_application/src/presentation/course/bloc/map/map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(MapUnSelect()) {
    on<MapFocusEvent>(_focus);
    on<MapUnFocusEvent>(_unFocus);
  }

  void _focus(MapFocusEvent event, Emitter<MapState> emit) {
    log("${event.mapModel}");
    emit(MapSelect(mapModel: event.mapModel));
  }

  void _unFocus(MapUnFocusEvent event, Emitter<MapState> emit) {
    emit(MapUnSelect());
  }

  @override
  void onChange(Change<MapState> change) {
    log("curr MapModel State: ${change.currentState}\nnext MapModel State ${change.nextState}");
    super.onChange(change);
  }
}
