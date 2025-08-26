import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_event.freezed.dart';

@freezed
sealed class LoginUiEvent with _$LoginUiEvent {
  const factory LoginUiEvent.emailChanged({required String email}) =
      LoginUiEmailChanged;

  const factory LoginUiEvent.passwordChanged({required String password}) =
      LoginUiPasswordChanged;

  const factory LoginUiEvent.obscureTextToggle() = LoginUiObscureTextToggled;

  const factory LoginUiEvent.loginButtonTap() = LoginUiLoginButtonTap;

  const factory LoginUiEvent.signUpButtonTap() = LoginUiSignUpButtonTap;
}
