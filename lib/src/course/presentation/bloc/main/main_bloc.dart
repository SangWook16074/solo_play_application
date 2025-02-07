import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_event.dart';
import 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainUnfocusState()) {
    on<MainEvent>((event, emit) {
      if (event is MainTouchEvent) {
        emit(MainFocusState());
      } else if (event is MainUnfocusEvent) {
        emit(MainUnfocusState());
      }
    });
  }

  @override
  void onChange(Change<MainState> change) {
    debugPrint(
        "curr MainBloc State: ${change.currentState}\nnext MainBloc State ${change.nextState}");
    super.onChange(change);
  }
}
