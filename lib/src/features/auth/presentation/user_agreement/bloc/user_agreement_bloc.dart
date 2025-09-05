import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/user_agreement_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/user_agreement/bloc/user_agreement_state.dart';

class UserAgreementBloc extends Bloc<UserAgreementEvent, UserAgreementState> {
  UserAgreementBloc() : super(UserAgreementState()) {
    on<UserAgreementIsOver14Toggled>(_onIsOver14Toggled);
    on<UserAgreementIsAgreedToTermsTogged>(_onIsAgreedToTermsToggled);
    on<UserAgreementIsAgreedToMarketingToggled>(_onIsAgreedToMarketingToggled);
    on<UserAgreementIsConsentedToAdsToggled>(_onIsConsentedToAdsToggled);
    on<UserAgreementAllAgree>(_onAllAgree);
    on<UserAgreementAllDisagree>(_onAllDisagree);
  }

  FutureOr<void> _onIsOver14Toggled(
      UserAgreementIsOver14Toggled event, Emitter<UserAgreementState> emit) {
    final agreement = state.agreement;
    emit(
        state.copyWith(agreement: agreement.copyWith(isOver14: event.isAgree)));
  }

  FutureOr<void> _onIsAgreedToTermsToggled(
      UserAgreementIsAgreedToTermsTogged event,
      Emitter<UserAgreementState> emit) {
    final agreement = state.agreement;
    emit(state.copyWith(
        agreement: agreement.copyWith(isAgreedToTerms: event.isAgree)));
  }

  FutureOr<void> _onIsAgreedToMarketingToggled(
      UserAgreementIsAgreedToMarketingToggled event,
      Emitter<UserAgreementState> emit) {
    final agreement = state.agreement;
    emit(state.copyWith(
        agreement: agreement.copyWith(isAgreedToMarketing: event.isAgree)));
  }

  FutureOr<void> _onIsConsentedToAdsToggled(
      UserAgreementIsConsentedToAdsToggled event,
      Emitter<UserAgreementState> emit) {
    final agreement = state.agreement;
    emit(state.copyWith(
        agreement: agreement.copyWith(isConsentedToAds: event.isAgree)));
  }

  FutureOr<void> _onAllAgree(
      UserAgreementAllAgree event, Emitter<UserAgreementState> emit) {
    final agreement = state.agreement;
    final allAgree = agreement.isAllAgree;
    emit(state.copyWith(
        agreement: agreement.copyWith(
            isOver14: !allAgree,
            isAgreedToTerms: !allAgree,
            isAgreedToMarketing: !allAgree,
            isConsentedToAds: !allAgree)));
  }

  FutureOr<void> _onAllDisagree(
      UserAgreementAllDisagree event, Emitter<UserAgreementState> emit) {
    final agreement = state.agreement;
    emit(state.copyWith(
        agreement: agreement.copyWith(
            isOver14: false,
            isAgreedToTerms: false,
            isAgreedToMarketing: false,
            isConsentedToAds: false)));
  }
}
