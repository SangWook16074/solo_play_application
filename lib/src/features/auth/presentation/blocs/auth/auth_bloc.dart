import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth/auth_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const UnAuthenticate()) {
    on<SignIn>(onSignIn);
    on<SignOut>(onSignOut);
    on<SignUp>(onSignUp);
  }

  FutureOr<void> onSignIn(SignIn event, Emitter<AuthState> emit) {
    log("user sign in");
  }

  FutureOr<void> onSignOut(SignOut event, Emitter<AuthState> emit) {
    log("user sign out");
  }

  FutureOr<void> onSignUp(SignUp event, Emitter<AuthState> emit) {
    log("user sign up");
  }

  @override
  void onChange(Change<AuthState> change) {
    log("curr state : ${change.currentState} next state : ${change.nextState}");
    super.onChange(change);
  }
}
