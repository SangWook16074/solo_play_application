import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resister_ui_event.freezed.dart';

@freezed
sealed class ResisterUiEvent with _$ResisterUiEvent {
  const factory ResisterUiEvent._() = _EmailResisterUiEvent;

  const factory ResisterUiEvent.userTermsChanged({
    required bool isOver14,
    required bool isAgreedToTerms,
    required bool isAgreedToMarketing,
    required bool isConsentedToAds,
  }) = UserTermsChanged;

  const factory ResisterUiEvent.userEmailChanged({
    required String email,
  }) = UserEmailChanged;

  const factory ResisterUiEvent.userPasswordChanged({
    required String password,
  }) = UserPasswordChanged;

  const factory ResisterUiEvent.userMoveToEmailResisterUi() =
      UserMoveToEmailResisterUI;
  const factory ResisterUiEvent.userMoveToPasswordResisterUi() =
      UserMoveToPasswordResisterUI;
  const factory ResisterUiEvent.userMoveToVerificationUi() =
      UserMoveToVerificationUI;
}
