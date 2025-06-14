import 'package:equatable/equatable.dart';

sealed class LoginUiEvent extends Equatable {}

final class ChangeInputEmail extends LoginUiEvent {
  final String email;

  ChangeInputEmail({required this.email});

  @override
  List<Object?> get props => [email];
}

final class ChangeInputPassword extends LoginUiEvent {
  final String password;

  ChangeInputPassword({required this.password});

  @override
  List<Object?> get props => [password];
}

final class ObscureTextOff extends LoginUiEvent {
  @override
  List<Object?> get props => [];
}

final class ObscureTextOn extends LoginUiEvent {
  @override
  List<Object?> get props => [];
}
