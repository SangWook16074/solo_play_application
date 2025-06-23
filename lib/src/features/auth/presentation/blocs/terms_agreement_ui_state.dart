import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_agreement_ui_state.freezed.dart';

@freezed
abstract class TermsAgreementUiState with _$TermsAgreementUiState {
  const factory TermsAgreementUiState({
    @Default(false) bool isOver14,
    @Default(false) bool isAgreedToTerms,
    @Default(false) bool isAgreedToMarketing,
    @Default(false) bool isConsentedToAds,
  }) = _TermsAgreementUiState;

  const TermsAgreementUiState._();

  bool get isAllAgreement {
    return isOver14 &&
        isAgreedToTerms &&
        isAgreedToMarketing &&
        isConsentedToAds;
  }

  bool get isAgree {
    return isOver14 && isAgreedToTerms;
  }
}
