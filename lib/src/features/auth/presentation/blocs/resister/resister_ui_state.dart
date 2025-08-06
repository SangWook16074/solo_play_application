import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resister_ui_state.freezed.dart';

enum SignUpStep { terms, email, password, verification }

@freezed
abstract class ResisterUiState with _$ResisterUiState {
  const factory ResisterUiState({
    @Default(UserInfo()) UserInfo userInfo,
    @Default(SignUpStep.terms) SignUpStep step,
    @Default(false) bool isLoading,
  }) = _ResisterUiState;
}

@freezed
abstract class UserInfo with _$UserInfo {
  const factory UserInfo({
    @Default("") String email,
    @Default("") String password,
    @Default(false) bool isOver14,
    @Default(false) bool isAgreedToTerms,
    @Default(false) bool isAgreedToMarketing,
    @Default(false) bool isConsentedToAds,
  }) = _UserInfo;
}
