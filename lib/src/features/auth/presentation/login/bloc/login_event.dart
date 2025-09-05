import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged({required String email}) =
      LoginEmailChanged;

  const factory LoginEvent.passwordChanged({required String password}) =
      LoginPasswordChanged;

  const factory LoginEvent.login() = LoginButtonTap;
}
