import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resister_ui_state.freezed.dart';

@freezed
abstract class ResisterUiState with _$ResisterUiState {
  const factory ResisterUiState({
    @Default("") String email,
    @Default("") String password,
    @Default(false) bool isOver14,
    @Default(false) bool isAgreedToTerms,
    @Default(false) bool isAgreedToMarketing,
    @Default(false) bool isConsentedToAds,
  }) = _ResisterUiState;
}
