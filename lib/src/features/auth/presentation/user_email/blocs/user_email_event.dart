import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_email_event.freezed.dart';

@freezed
sealed class UserEmailEvent with _$UserEmailEvent {
  const factory UserEmailEvent.changed({required String email}) =
      UserEmailChanged;

  const factory UserEmailEvent.checkDuplicate({required String email}) =
      UserEmailCheckDuplicate;
}
