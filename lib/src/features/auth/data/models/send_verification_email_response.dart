import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/typedefs/json_map.dart';

part 'send_verification_email_response.freezed.dart';
part 'send_verification_email_response.g.dart';

@freezed
abstract class SendVerificationEmailResponse
    with _$SendVerificationEmailResponse {
  const factory SendVerificationEmailResponse({
    required String message,
  }) = _SendVerificationEmailResponse;

  factory SendVerificationEmailResponse.fromJson(JsonMap json) =>
      _$SendVerificationEmailResponseFromJson(json);
}
