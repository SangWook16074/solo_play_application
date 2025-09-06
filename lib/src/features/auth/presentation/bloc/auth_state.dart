import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

enum AuthenticateStatus { unknown, authenticated, unauthenticated }

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthenticateStatus.unknown) AuthenticateStatus status,
  }) = _AuthState;
}
