import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';

part 'email_duplicate_model.freezed.dart';

@freezed
abstract class EmailDuplicateModel with _$EmailDuplicateModel {
  const factory EmailDuplicateModel(
      {required String result, required bool isAvail}) = _EmailDuplicateModel;

  const EmailDuplicateModel._();

  factory EmailDuplicateModel.fromEntity(EmailDuplicateStatus entity) {
    return EmailDuplicateModel(result: entity.result, isAvail: entity.isAvail);
  }
}
