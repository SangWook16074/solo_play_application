import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/blocs/resister_ui_state.dart';

class ResisterUiBloc extends Bloc<ResisterUiEvent, ResisterUiState> {
  ResisterUiBloc() : super(const ResisterUiState()) {
    on<UserTermsChanged>(_onUserTermsChanged);
    on<UserEmailChanged>(_onUserEmailChanged);
    on<UserPasswordChanged>(_onUserPasswordChanged);
    on<UserMoveToEmailResisterUI>(_onUserMoveToEmailResisterUi);
    on<UserMoveToPasswordResisterUI>(_onUserMoveToPasswordResisterUi);
    on<UserMoveToVerificationUI>(_onUserMoveToVerificationUi);
  }

  void _onUserTermsChanged(
      UserTermsChanged event, Emitter<ResisterUiState> emit) {
    log("사용자 이용약관 변경");
    emit(state.copyWith(
      userInfo: state.userInfo.copyWith(
          isOver14: event.isOver14,
          isAgreedToTerms: event.isAgreedToTerms,
          isAgreedToMarketing: event.isAgreedToMarketing,
          isConsentedToAds: event.isConsentedToAds),
    ));
  }

  void _onUserEmailChanged(
      UserEmailChanged event, Emitter<ResisterUiState> emit) {
    log("사용자 이메일 변경");
    emit(state.copyWith(userInfo: state.userInfo.copyWith(email: event.email)));
  }

  void _onUserPasswordChanged(
      UserPasswordChanged event, Emitter<ResisterUiState> emit) {
    log("사용자 비밀번호 변경");
    emit(state.copyWith(
        userInfo: state.userInfo.copyWith(password: event.password)));
  }

  void _onUserMoveToEmailResisterUi(
      UserMoveToEmailResisterUI event, Emitter<ResisterUiState> emit) {
    log("move to email resister ui");
    emit(state.copyWith(step: SignUpStep.email));
  }

  void _onUserMoveToPasswordResisterUi(
      UserMoveToPasswordResisterUI event, Emitter<ResisterUiState> emit) {
    log("move to password resister ui");

    emit(state.copyWith(step: SignUpStep.password));
  }

  void _onUserMoveToVerificationUi(
      UserMoveToVerificationUI event, Emitter<ResisterUiState> emit) {
    log("move to verification ui");

    emit(state.copyWith(step: SignUpStep.verification));
  }

  @override
  void onChange(Change<ResisterUiState> change) {
    log("curr state : ${change.currentState} next state : ${change.nextState}");
    super.onChange(change);
  }
}
