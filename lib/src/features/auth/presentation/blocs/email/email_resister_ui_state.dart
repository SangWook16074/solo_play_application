import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_resister_ui_state.freezed.dart';

enum EmailValidateState { emtpy, validate, invalidate, conflict }

@freezed
abstract class EmailResisterUiState with _$EmailResisterUiState {
  const factory EmailResisterUiState({
    @Default("") String email,
    @Default(false) bool isAvail,
    @Default("") String errorMsg,
  }) = _EmailResisterUiState;

  const EmailResisterUiState._();

  bool get isEmailValidate {
    final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    return emailRegex.hasMatch(email);
  }

  EmailValidateState get emailValidateState {
    if (email.isEmpty) return EmailValidateState.emtpy;

    if (errorMsg.isNotEmpty) return EmailValidateState.conflict;

    if (isEmailValidate) {
      return EmailValidateState.validate;
    } else {
      return EmailValidateState.invalidate;
    }
  }
}
