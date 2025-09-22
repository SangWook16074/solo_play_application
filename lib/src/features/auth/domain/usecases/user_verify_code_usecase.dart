import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/models/verify_code_request.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

abstract class UserVerifyCodeUsecase {
  Future<Result<String>> call(VerifyCodeRequest request);
}

class UserVerifyCodeUsecaseImpl extends UserVerifyCodeUsecase {
  final AuthRepository _repository;

  UserVerifyCodeUsecaseImpl({required AuthRepository repository}) : _repository = repository;

  @override
  Future<Result<String>> call(VerifyCodeRequest request) async {
    return await _repository.verifyCode(request);
  }
}
