import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remote/auth_service_impl.dart';
import 'package:solo_play_application/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/check_email_duplicate_usecase.dart';

/// 리모트 인증/인가 API DI
final authApisProvider = RepositoryProvider(
    create: (context) => AuthApisImpl(dio: context.read<Dio>()));

/// 인증인가 레포지토리 DI
final authRepositoryProvider = RepositoryProvider(
    create: (context) =>
        AuthRepositoryImpl(authServices: context.read<AuthApisImpl>()));

/// 이메일 중복 검사 유스케이스 DI
final checkEmailDuplicateUsecaseProvider = RepositoryProvider(
  create: (context) =>
      CheckEmailDuplicateUsecaseImpl(context.read<AuthRepositoryImpl>()),
);
