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
    emit(state.copyWith(isFirstAgree: true));
  }

  void _onFristDisagreeButtonTap(
      FirstDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isFirstAgree: false));
  }

  void _onSecondAgreeButtonTap(
      SecondAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isSecondAgree: true));
  }

  void _onSecondDisagreeButtonTap(
      SecondDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isSecondAgree: false));
  }

  void _onThirdAgreeButonTap(
      ThirdAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isThirdAgree: true));
  }

  void _onThirdDisagreeButtonTap(
      ThirdDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isThirdAgree: false));
  }

  void _onFourthAgreeButtonTap(
      FourthAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isFourthAgree: true));
  }

  void _onFourthDisagreeButtonTap(
      FourthDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(isFourthAgree: false));
  }

  void _onAllAgreeButtonTap(
      AllAgreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(
        isFirstAgree: true,
        isSecondAgree: true,
        isThirdAgree: true,
        isFourthAgree: true));
  }

  void _onAllDisagreeButtonTap(
      AllDisagreeButtonTap event, Emitter<TermsAgreementUiState> emit) {
    emit(state.copyWith(
        isFirstAgree: false,
        isSecondAgree: false,
        isThirdAgree: false,
        isFourthAgree: false));
  }

  @override
  void onChange(Change<TermsAgreementUiState> change) {
    log("currentState : ${change.currentState} nextState : ${change.nextState}");
    super.onChange(change);
  }
}
