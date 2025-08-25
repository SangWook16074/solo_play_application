import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_ui_event.freezed.dart';

@freezed
sealed class EmailVerificationUiEvent with _$EmailVerificationUiEvent {
  const factory EmailVerificationUiEvent.userInputCode({
    required String code,
  }) = UserInputCode;

  const factory EmailVerificationUiEvent.userSendAuthCodeRequest({
    required String email,
  }) = UserSendAuthCodeRequest;
}
