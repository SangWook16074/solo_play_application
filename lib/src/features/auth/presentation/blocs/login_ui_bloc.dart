import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/login_ui_state.dart';

class LoginUiBloc extends Bloc<LoginUiEvent, LoginUiState> {
  LoginUiBloc() : super(const LoginUiState()) {
    on<LoginUiEmailChanged>(_onEmailChanged);
    on<LoginUiPasswordChanged>(_onPasswordChanged);
    on<LoginUiObscureTextToggled>(_onObscureTextToggled);
    on<LoginUiLoginButtonTap>(_onLoginButtonTap);
    on<LoginUiSignUpButtonTap>(_onSignUpButtonTap);
  }

  @override
  void onChange(Change<LoginUiState> change) {
    log("currState : ${change.currentState} nextState : ${change.nextState}");
    super.onChange(change);
  }

  FutureOr<void> _onEmailChanged(
      LoginUiEmailChanged event, Emitter<LoginUiState> emit) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _onPasswordChanged(
      LoginUiPasswordChanged event, Emitter<LoginUiState> emit) {
    emit(state.copyWith(password: event.password));
  }

  FutureOr<void> _onObscureTextToggled(
      LoginUiObscureTextToggled event, Emitter<LoginUiState> emit) {
    emit(state.copyWith(obscureText: !state.obscureText));
  }

  FutureOr<void> _onLoginButtonTap(
      LoginUiLoginButtonTap event, Emitter<LoginUiState> emit) {}

  FutureOr<void> _onSignUpButtonTap(
      LoginUiSignUpButtonTap event, Emitter<LoginUiState> emit) {}
}
