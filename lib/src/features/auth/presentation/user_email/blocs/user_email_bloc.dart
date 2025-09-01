import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/check_email_duplicate_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/blocs/user_email_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_email/blocs/user_email_state.dart';

class UserEmailBloc extends Bloc<UserEmailEvent, UserEmailState> {
  final CheckEmailDuplicateUsecase _checkEmailDuplicateUsecase;

  UserEmailBloc({
    required CheckEmailDuplicateUsecase checkEmailDuplicateUsecase,
  })  : _checkEmailDuplicateUsecase = checkEmailDuplicateUsecase,
        super(UserEmailState()) {
    on<UserEmailChanged>(_onChaned);
    on<UserEmailCheckDuplicate>(_onCheckDuplicate);
  }

  FutureOr<void> _onChaned(
      UserEmailChanged event, Emitter<UserEmailState> emit) {
    emit(state.copyWith(email: event.email));
  }

  FutureOr<void> _onCheckDuplicate(
      UserEmailCheckDuplicate event, Emitter<UserEmailState> emit) async {
    final result = await _checkEmailDuplicateUsecase.call(event.email);
    emit(switch (result) {
      Success() => state.copyWith(isAvail: true),
      Failure(:final message) =>
        state.copyWith(errorMessage: message, isAvail: false),
    });
  }
}
