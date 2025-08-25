import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password_resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/password_resister_ui_state.dart';

class PasswordResisterUiBloc
    extends Bloc<PasswordResisterUiEvent, PasswordResisterUiState> {
  PasswordResisterUiBloc() : super(const PasswordResisterUiState()) {
    on<UserPasswordChanged>(_onUserPasswordChanged);
    on<UserPasswordCheckChanged>(_onUserPasswordCheckChanged);
    on<UserPasswordObscureToggle>(_onUserPasswordObscureToggle);
    on<UserPasswordCheckObscureToggle>(_onUserPasswordCheckObscureToggle);
  }

  void _onUserPasswordChanged(
      UserPasswordChanged event, Emitter<PasswordResisterUiState> emit) {
    log("user password changed");
    emit(state.copyWith(password: event.password));
  }

  void _onUserPasswordCheckChanged(
      UserPasswordCheckChanged event, Emitter<PasswordResisterUiState> emit) {
    log("user password check changed");
    emit(state.copyWith(passwordCheck: event.passwordCheck));
  }

  void _onUserPasswordObscureToggle(
      UserPasswordObscureToggle event, Emitter<PasswordResisterUiState> emit) {
    log("user password obscure toggle");
    final prev = state.obscurePassword;
    emit(state.copyWith(obscurePassword: !prev));
  }

  void _onUserPasswordCheckObscureToggle(UserPasswordCheckObscureToggle event,
      Emitter<PasswordResisterUiState> emit) {
    log("user password check obscure toggle");
    final prev = state.obscurePasswordCheck;
    emit(state.copyWith(obscurePasswordCheck: !prev));
  }

  @override
  void onChange(Change<PasswordResisterUiState> change) {
    log("curr state : ${change.currentState} next state : ${change.nextState}");
    super.onChange(change);
  }
}
