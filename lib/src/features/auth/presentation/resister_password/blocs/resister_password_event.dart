import 'package:freezed_annotation/freezed_annotation.dart';

part 'resister_password_event.freezed.dart';

@freezed
sealed class ResisterPasswordEvent with _$ResisterPasswordEvent {
  const factory ResisterPasswordEvent.changed() = ResisterPasswordChanged;
  const factory ResisterPasswordEvent.checkChanged() =
      ResisterPasswordCheckChanged;
  const factory ResisterPasswordEvent.obscurePasswordToggled() =
      ObscurePasswordToggled;
  const factory ResisterPasswordEvent.obscurePasswordCheckToggled() =
      ObscurePasswordCheckToggled;
}
