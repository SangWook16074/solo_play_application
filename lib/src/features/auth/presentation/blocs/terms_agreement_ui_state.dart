import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_agreement_ui_state.freezed.dart';

@freezed
abstract class TermsAgreementUiState with _$TermsAgreementUiState {
  const factory TermsAgreementUiState({
    @Default(false) bool isFirstAgree,
    @Default(false) bool isSecondAgree,
    @Default(false) bool isThirdAgree,
    @Default(false) bool isFourthAgree,
  }) = _TermsAgreementUiState;

  const TermsAgreementUiState._();

  bool get isAllAgreement {
    return isFirstAgree && isSecondAgree && isThirdAgree && isFourthAgree;
  }

  bool get isAgree {
    return isFirstAgree && isSecondAgree;
  }
}
