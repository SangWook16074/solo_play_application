import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solo_play_application/src/core/typedefs/json_map.dart';

part 'send_verification_email_request.freezed.dart';
part 'send_verification_email_request.g.dart';

@freezed
abstract class SendVerificationEmailRequest
    with _$SendVerificationEmailRequest {
  const factory SendVerificationEmailRequest({required String email}) =
      _SendVerificationEmailRequest;

  factory SendVerificationEmailRequest.fromJson(JsonMap json) =>
      _$SendVerificationEmailRequestFromJson(json);
}
