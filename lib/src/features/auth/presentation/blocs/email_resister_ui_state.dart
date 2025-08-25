import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_resister_ui_state.freezed.dart';

enum EmailValidState { empty, validate, invalidate, conflict }

@freezed
abstract class EmailResisterUiState with _$EmailResisterUiState {
  const factory EmailResisterUiState({
    @Default("") String email,
    @Default(false) bool isAvail,
    @Default("") String errorMsg,
  }) = _EmailResisterUiState;

  const EmailResisterUiState._();

  bool get isEmailValid {
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    return emailRegex.hasMatch(email);
  }

  EmailValidState get emailValidateState {
    if (email.isEmpty) return EmailValidState.empty;

    if (errorMsg.isNotEmpty) return EmailValidState.conflict;

    if (isEmailValid) {
      return EmailValidState.validate;
    } else {
      return EmailValidState.invalidate;
    }
  }
}
