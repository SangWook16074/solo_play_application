import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_password_event.freezed.dart';

@freezed
sealed class RegisterPasswordEvent with _$RegisterPasswordEvent {
  const factory RegisterPasswordEvent.changed() = RegisterPasswordChanged;
  const factory RegisterPasswordEvent.checkChanged() =
      RegisterPasswordCheckChanged;
  const factory RegisterPasswordEvent.obscurePasswordToggled() =
      ObscurePasswordToggled;
  const factory RegisterPasswordEvent.obscurePasswordCheckToggled() =
      ObscurePasswordCheckToggled;
}
