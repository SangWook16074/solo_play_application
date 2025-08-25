import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_state.dart';

class LoginUiBloc extends Bloc<LoginUiEvent, LoginUiState> {
  LoginUiBloc() : super(const LoginUiState()) {
    on<LoginUiEvent>(handler);
  }

  void handler(LoginUiEvent event, Emitter<LoginUiState> emit) {
    log(event.toString());
    switch (event) {
      case ChangeInputEmail():
        emit(state.copyWith(email: event.email));
      case ChangeInputPassword():
        emit(state.copyWith(password: event.password));
      case ObscureTextOff():
        emit(state.copyWith(obscureText: false));
      case ObscureTextOn():
        emit(state.copyWith(obscureText: true));
    }
  }

  @override
  void onChange(Change<LoginUiState> change) {
    log("currState : ${change.currentState} nextState : ${change.nextState}");
    super.onChange(change);
  }
}
