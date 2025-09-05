import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/locals/jwt_storage.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/locals/jwt_storage_impl.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource_impl.dart';
import 'package:solo_play_application/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/user_login_usecase.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/cubits/password_visibility_cubit.dart';
import 'package:solo_play_application/src/features/auth/presentation/login/views/login_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider<Dio>(create: (context) => Dio()),
        RepositoryProvider(create: (context) => FlutterSecureStorage()),
        RepositoryProvider(
            create: (context) =>
                JwtStorageImpl(storage: context.read<FlutterSecureStorage>())),
        RepositoryProvider(
            create: (context) => AuthDatasourceImpl(dio: context.read<Dio>())),
        RepositoryProvider(
            create: (context) => AuthRepositoryImpl(
                authDatasource: context.read<AuthDatasource>(),
                jwtStorage: context.read<JwtStorage>())),
        RepositoryProvider(
            create: (context) => UserLoginUsecaseImpl(
                authRepository: context.read<AuthRepository>())),
        BlocProvider<LoginBloc>(
            create: (context) =>
                LoginBloc(userLoginUsecase: context.read<UserLoginUsecase>())),
        BlocProvider(create: (context) => PasswordVisibilityCubit())
      ],
      child: LoginUI(),
    );
  }
}
