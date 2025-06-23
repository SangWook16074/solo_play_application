import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_resister_ui_state.freezed.dart';

@freezed
abstract class PasswordResisterUiState with _$PasswordResisterUiState {
  const factory PasswordResisterUiState({
    @Default("") String password,
    @Default("") String passwordCheck,
    @Default(false) bool obscurePassword,
    @Default(false) bool obscurePasswordCheck,
  }) = _PasswordResisterUiState;

  const PasswordResisterUiState._();

  bool get isPasswordValidate {
    final passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$%^&*()_+{}\[\]:;<>,.?~\\/\-=\|])[A-Za-z\d!@#\$%^&*()_+{}\[\]:;<>,.?~\\/\-=\|]{8,20}$');

    return passwordRegex.hasMatch(password);
  }

  bool get isPasswordCheckValidate {
    final passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$%^&*()_+{}\[\]:;<>,.?~\\/\-=\|])[A-Za-z\d!@#\$%^&*()_+{}\[\]:;<>,.?~\\/\-=\|]{8,20}$');

    return passwordRegex.hasMatch(passwordCheck);
  }

  bool get isPasswordChecked {
    if (password.isEmpty) return false;
    if (passwordCheck.isEmpty) return false;
    if (!isPasswordValidate) return false;
    if (!isPasswordCheckValidate) return false;
    if (password != passwordCheck) return false;
    return true;
  }
}
