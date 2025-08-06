import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/check_email_duplicate_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/email/email_resister_ui_state.dart';

class EmailResisterUiBloc
    extends Bloc<EmailResisterUiEvent, EmailResisterUiState> {
  final CheckEmailDuplicateUsecase checkEmailDuplicateUsecase;
  EmailResisterUiBloc({required this.checkEmailDuplicateUsecase})
      : super(const EmailResisterUiState()) {
    on<UserEmailInput>(_onUserEmailChanged);
    on<UserCheckEmailDuplicate>(_onUserCheckEmailDuplicat);
  }

  void _onUserEmailChanged(
      UserEmailInput event, Emitter<EmailResisterUiState> emit) {
    log("user resister email changed");
    emit(state.copyWith(email: event.email));
  }

  void _onUserCheckEmailDuplicat(
      UserCheckEmailDuplicate event, Emitter<EmailResisterUiState> emit) async {
    final email = event.email;
    log("user check email duplicate by $email");
    final result = await checkEmailDuplicateUsecase.call(email);
    if (!result.isAvail) {
      emit(state.copyWith(errorMsg: result.result));
    } else {
      emit(state.copyWith(isAvail: true));
    }
  }

  @override
  void onChange(Change<EmailResisterUiState> change) {
    log("curr state : ${change.currentState} next state : ${change.nextState}");
    super.onChange(change);
  }
}
