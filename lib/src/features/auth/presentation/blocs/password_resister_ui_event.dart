import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_resister_ui_event.freezed.dart';

@freezed
sealed class PasswordResisterUiEvent with _$PasswordResisterUiEvent {
  const factory PasswordResisterUiEvent.userPasswordChanged({
    required String password,
  }) = UserPasswordChanged;

  const factory PasswordResisterUiEvent.userPasswordCheckChanged({
    required String passwordCheck,
  }) = UserPasswordCheckChanged;

  const factory PasswordResisterUiEvent.userPasswordObscureToggle() =
      UserPasswordObscureToggle;

  const factory PasswordResisterUiEvent.userPasswordCheckObscureToggle() =
      UserPasswordCheckObscureToggle;

  const factory PasswordResisterUiEvent._() = _PasswordResisterUiEvent;
}
