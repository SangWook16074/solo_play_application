import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_resister_ui_state.dart';

class EmailResisterUiBloc
    extends Bloc<EmailResisterUiEvent, EmailResisterUiState> {
  EmailResisterUiBloc() : super(const EmailResisterUiState()) {
    on<UserEmailChanged>(_onUserEmailChanged);
  }

  void _onUserEmailChanged(
      UserEmailChanged event, Emitter<EmailResisterUiState> emit) {
    log("user resister email changed");
    emit(state.copyWith(email: event.email));
  }

  @override
  void onChange(Change<EmailResisterUiState> change) {
    log("curr state : ${change.currentState} next state : ${change.nextState}");
    super.onChange(change);
  }
}
