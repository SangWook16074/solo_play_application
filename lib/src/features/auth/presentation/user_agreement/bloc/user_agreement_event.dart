import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_agreement_event.freezed.dart';

@freezed
sealed class UserAgreementEvent with _$UserAgreementEvent {
  const factory UserAgreementEvent.isOver14Toggled({
    required bool isAgree,
  }) = UserAgreementIsOver14Toggled;
  const factory UserAgreementEvent.isAgreedToTermsToggled({
    required bool isAgree,
  }) = UserAgreementIsAgreedToTermsTogged;
  const factory UserAgreementEvent.isAgreedToMarketingToggled({
    required bool isAgree,
  }) = UserAgreementIsAgreedToMarketingToggled;
  const factory UserAgreementEvent.isConsentedToAdsToggled({
    required bool isAgree,
  }) = UserAgreementIsConsentedToAdsToggled;

  const factory UserAgreementEvent.allAgree() = UserAgreementAllAgree;

  const factory UserAgreementEvent.allDisagree() = UserAgreementAllDisagree;
}
