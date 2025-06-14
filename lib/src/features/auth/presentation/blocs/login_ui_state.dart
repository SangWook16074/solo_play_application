import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_state.freezed.dart';

@freezed
sealed class LoginUiState with _$LoginUiState {
  const factory LoginUiState({
    @Default("") String email,
    @Default("") String password,
    @Default(true) bool obscureText,
  }) = _LoginUiState;
}
