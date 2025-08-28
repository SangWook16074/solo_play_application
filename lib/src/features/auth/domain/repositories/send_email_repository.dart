import 'package:solo_play_application/src/features/auth/data/models/send_verification_email_request.dart';
import 'package:solo_play_application/src/features/auth/data/models/send_verification_email_response.dart';

abstract class SendEmailRepository {
  Future<SendVerificationEmailResponse> sendVerificationEmail(
      SendVerificationEmailRequest request);
}
