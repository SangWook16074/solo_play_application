import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:solo_play_application/src/core/router/router.dart';
import 'package:solo_play_application/src/core/utils/observers/bloc_observer.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/locals/jwt_storage.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/locals/jwt_storage_impl.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource_impl.dart';
import 'package:solo_play_application/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/get_user_access_token_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/bloc/auth_event.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          RepositoryProvider<Dio>(create: (context) => Dio()),
          RepositoryProvider<FlutterSecureStorage>(
              create: (context) => FlutterSecureStorage()),
          RepositoryProvider<AuthDatasource>(
              create: (context) =>
                  AuthDatasourceImpl(dio: context.read<Dio>())),
          RepositoryProvider<JwtStorage>(
              create: (context) => JwtStorageImpl(
                  storage: context.read<FlutterSecureStorage>())),
          RepositoryProvider<AuthRepository>(
              create: (context) => AuthRepositoryImpl(
                  authDatasource: context.read<AuthDatasource>(),
                  jwtStorage: context.read<JwtStorage>())),
          RepositoryProvider<GetUserAccessTokenUsecase>(
              create: (context) => GetUserAccessTokenUsecaseImpl(
                  authRepository: context.read<AuthRepository>())),
          BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                  getUserAccessTokenUsecase:
                      context.read<GetUserAccessTokenUsecase>())
                ..add(AuthCheck()))
        ],
        child: Builder(builder: (context) {
          return MaterialApp.router(
            routerConfig: router(context.read<AuthBloc>()),
          );
        }));
  }
}
