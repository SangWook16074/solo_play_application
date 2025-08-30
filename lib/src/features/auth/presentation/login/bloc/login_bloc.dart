import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/login_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
  }

  @override
  void onChange(Change<LoginState> change) {
    log("currState : ${change.currentState} nextState : ${change.nextState}");
    super.onChange(change);
  }

  FutureOr<void> _onEmailChanged(
      LoginEmailChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _onPasswordChanged(
      LoginPasswordChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }
}
