import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class LevelCubit extends Cubit<int> {
  LevelCubit() : super(0);
  void changeIndex(int value) {
    emit(value);
  }

  @override
  void onChange(Change<int> change) {
    log("currState : ${change.currentState} nextState : ${change.nextState}");
    super.onChange(change);
  }
}
