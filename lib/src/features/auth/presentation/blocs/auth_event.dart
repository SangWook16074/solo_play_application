import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn({
    required String email,
    required String password,
  }) = SignIn;
  const factory AuthEvent.signOut() = SignOut;

  const factory AuthEvent.resister({
    required String email,
    required String password,
    required bool isOver14,
    required bool isAgreedToTerms,
    required bool isAgreedToMarketing,
    required bool isConsentedToAds,
  }) = SignUp;
}
