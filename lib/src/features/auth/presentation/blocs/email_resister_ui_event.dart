import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_resister_ui_event.freezed.dart';

@freezed
class EmailResisterUiEvent with _$EmailResisterUiEvent {
  const factory EmailResisterUiEvent.userEmailChanged({required String email}) =
      UserEmailChanged;

  const factory EmailResisterUiEvent._() = _EmailResisterUiEvent;
}
