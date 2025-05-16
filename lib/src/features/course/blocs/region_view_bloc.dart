import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/course/blocs/region_view_event.dart';
import 'package:solo_play_application/src/features/course/blocs/region_view_state.dart';

class RegionViewBloc extends Bloc<RegionViewEvent, RegionViewState> {
  RegionViewBloc() : super(RegionUnSelect()) {
    on<FocusEvent>(_focus);
    on<UnFocusEvent>(_unFocus);
  }

  void _focus(FocusEvent event, Emitter<RegionViewState> emit) {
    log("${event.region}");
    emit(RegionSelect(region: event.region));
  }

  void _unFocus(UnFocusEvent event, Emitter<RegionViewState> emit) {
    emit(RegionUnSelect());
  }

  @override
  void onChange(Change<RegionViewState> change) {
    log("curr MapModel State: ${change.currentState}\nnext MapModel State ${change.nextState}");
    super.onChange(change);
  }
}
