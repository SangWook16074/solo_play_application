import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_verification_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email_verification_ui_state.dart';

class EmailVerificationUiBloc
    extends Bloc<EmailVerificationUiEvent, EmailVerificationUiState> {
  EmailVerificationUiBloc({
    required String email,
  }) : super(EmailVerificationUiState(userEmail: email)) {
    on<UserInputCode>(_onUserInputCode);
  }

  FutureOr<void> _onUserInputCode(
      UserInputCode event, Emitter<EmailVerificationUiState> emit) {
    emit(state.copyWith(userInputCode: event.code));
  }
}
