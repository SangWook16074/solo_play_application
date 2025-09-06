import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/get_user_access_token_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetUserAccessTokenUsecase _getUserAccessTokenUsecase;

  AuthBloc({
    required GetUserAccessTokenUsecase getUserAccessTokenUsecase,
  })  : _getUserAccessTokenUsecase = getUserAccessTokenUsecase,
        super(AuthState()) {
    on<AuthCheck>(_onCheck);
  }

  FutureOr<void> _onCheck(AuthCheck event, Emitter<AuthState> emit) async {
    final accessToken = await _getUserAccessTokenUsecase.call();
    if (accessToken != null) {
      emit(AuthState(status: AuthenticateStatus.authenticated));
    } else {
      emit(AuthState(status: AuthenticateStatus.unauthenticated));
    }
  }
}
