import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/user_email.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

final class CheckEmailDuplicateUsecaseImpl
    implements CheckEmailDuplicateUsecase {
  final AuthRepository _authRepository;

  const CheckEmailDuplicateUsecaseImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;
  @override
  Future<Result<String>> call(String email) async {
    final userEmail = UserEmail(email: email);
    if (!userEmail.isValid) {
      return Failure("올바른 형식으로 입력해 주세요.");
    }
    return _authRepository.checkEmailDuplicate(email);
  }
}

abstract class CheckEmailDuplicateUsecase {
  Future<Result<String>> call(String email);
}
