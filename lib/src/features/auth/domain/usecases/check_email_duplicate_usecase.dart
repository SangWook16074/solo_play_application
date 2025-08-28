import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

final class CheckEmailDuplicateUsecaseImpl
    implements CheckEmailDuplicateUsecase {
  final AuthRepository _authRepository;

  const CheckEmailDuplicateUsecaseImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;
  @override
  Future<EmailDuplicateStatus> call(String email) async {
    return await _authRepository.checkEmailDuplicate(email);
  }
}

abstract class CheckEmailDuplicateUsecase {
  Future<EmailDuplicateStatus> call(String email);
}
