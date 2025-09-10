import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/register_password/blocs/register_password_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/register_password/blocs/register_password_state.dart';

class RegisterPasswordBloc
    extends Bloc<RegisterPasswordEvent, RegisterPasswordState> {
  RegisterPasswordBloc() : super(RegisterPasswordState()) {
    on<RegisterPasswordChanged>(_onPasswordChanged);
  }

  FutureOr<void> _onPasswordChanged(
      RegisterPasswordChanged event, Emitter<RegisterPasswordState> emit) {}
}
