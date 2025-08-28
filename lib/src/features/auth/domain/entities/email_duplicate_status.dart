import 'package:solo_play_application/src/features/auth/data/models/check_email_duplicate_dto.dart';

class EmailDuplicateStatus {
  final String result;
  final bool isAvail;
  const EmailDuplicateStatus({required this.result, required this.isAvail});

  factory EmailDuplicateStatus.fromResponse(
      CheckEmailDuplicateResponseDto response) {
    return EmailDuplicateStatus(result: response.result, isAvail: true);
  }
}
