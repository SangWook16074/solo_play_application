import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms_agreement_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/terms_agreement_ui_state.dart';

class TermsAgreementUiBloc
    extends Bloc<TermsAgreementUiEvent, TermsAgreementUiState> {
  TermsAgreementUiBloc() : super(const TermsAgreementUiState()) {
    on<FirstAgreeButtonTap>(_onFirstAgreeButtonTap);
    on<FirstDisagreeButtonTap>(_onFristDisagreeButtonTap);
    on<SecondAgreeButtonTap>(_onSecondAgreeButtonTap);
    on<SecondDisagreeButtonTap>(_onSecondDisagreeButtonTap);
    on<ThirdAgreeButtonTap>(_onThirdAgreeButonTap);
    on<ThirdDisagreeButtonTap>(_onThirdDisagreeButtonTap);
    on<FourthAgreeButtonTap>(_onFourthAgreeButtonTap);
    on<FourthDisagreeButtonTap>(_onFourthDisagreeButtonTap);
    on<AllAgreeButtonTap>(_onAllAgreeButtonTap);
    on<AllDisagreeButtonTap>(_onAllDisagreeButtonTap);
  }

  void _onFirstAgreeButtonTap(
      FirstAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isOver14: true));
  }

  void _onFristDisagreeButtonTap(
      FirstDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isOver14: false));
  }

  void _onSecondAgreeButtonTap(
      SecondAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isAgreedToTerms: true));
  }

  void _onSecondDisagreeButtonTap(
      SecondDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isAgreedToTerms: false));
  }

  void _onThirdAgreeButonTap(
      ThirdAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isAgreedToMarketing: true));
  }

  void _onThirdDisagreeButtonTap(
      ThirdDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isAgreedToMarketing: false));
  }

  void _onFourthAgreeButtonTap(
      FourthAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isConsentedToAds: true));
  }

  void _onFourthDisagreeButtonTap(
      FourthDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isConsentedToAds: false));
  }

  void _onAllAgreeButtonTap(
      AllAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(
        isOver14: true,
        isAgreedToTerms: true,
        isAgreedToMarketing: true,
        isConsentedToAds: true));
  }

  void _onAllDisagreeButtonTap(
      AllDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(
        isOver14: false,
        isAgreedToTerms: false,
        isAgreedToMarketing: false,
        isConsentedToAds: false));
  }

  @override
  void onChange(Change<TermsAgreementUiState> change) {
    log("currentState : ${change.currentState} nextState : ${change.nextState}");
    super.onChange(change);
  }
}
