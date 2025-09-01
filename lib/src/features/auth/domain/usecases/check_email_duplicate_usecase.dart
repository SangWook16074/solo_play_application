import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

final class CheckEmailDuplicateUsecaseImpl
    implements CheckEmailDuplicateUsecase {
  final AuthRepository _authRepository;

  const CheckEmailDuplicateUsecaseImpl(this._authRepository);
  @override
  Future<EmailDuplicateStatus> call(String email) async {
    return _authRepository.checkEmailDuplicate(email).then((response) {});
  }
}

abstract class CheckEmailDuplicateUsecase {
  Future<EmailDuplicateStatus> call(String email);
}
