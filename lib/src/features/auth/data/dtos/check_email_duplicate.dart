import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/utils/typedefs/json_map.dart';

part 'check_email_duplicate.freezed.dart';
part 'check_email_duplicate.g.dart';

@freezed
abstract class CheckEmailDuplicate with _$CheckEmailDuplicate {
  const factory CheckEmailDuplicate({required String email}) =
      _CheckEmailDuplicate;

  factory CheckEmailDuplicate.fromJson(JsonMap json) =>
      _$CheckEmailDuplicateFromJson(json);
}
