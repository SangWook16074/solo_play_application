import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/utils/typedefs/json_map.dart';

part 'check_email_duplicate.freezed.dart';
part 'check_email_duplicate.g.dart';

@freezed
abstract class CheckEmailDuplicateRequest with _$CheckEmailDuplicateRequest {
  const factory CheckEmailDuplicateRequest({
    required String email,
  }) = _CheckEmailDuplicateRequest;

  factory CheckEmailDuplicateRequest.fromJson(JsonMap json) =>
      _$CheckEmailDuplicateRequestFromJson(json);
}
