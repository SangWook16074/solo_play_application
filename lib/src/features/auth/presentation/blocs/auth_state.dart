import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.authenticate() = Authenticate;
  const factory AuthState.unAuthenticate() = UnAuthenticate;
  const factory AuthState.loading() = Loading;
}
