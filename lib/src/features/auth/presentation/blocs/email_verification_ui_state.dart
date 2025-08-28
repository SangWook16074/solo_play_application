import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_ui_state.freezed.dart';

@freezed
abstract class EmailVerificationUiState with _$EmailVerificationUiState {
  const factory EmailVerificationUiState({
    @Default("") String userInputCode,
    required String userEmail,
    @Default(true) bool isInit,
  }) = _EmailVerificationUiState;
}
