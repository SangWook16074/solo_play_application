import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_resister_ui_event.freezed.dart';

@freezed
class EmailResisterUiEvent with _$EmailResisterUiEvent {
  const factory EmailResisterUiEvent.userEmailInput({required String email}) =
      UserEmailInput;

  const factory EmailResisterUiEvent.userCheckEmailDuplicate(
      {required String email}) = UserCheckEmailDuplicate;

  const factory EmailResisterUiEvent._() = _EmailResisterUiEvent;
}
