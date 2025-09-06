import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

class GetUserAccessTokenUsecaseImpl extends GetUserAccessTokenUsecase {
  final AuthRepository _authRepository;

  GetUserAccessTokenUsecaseImpl({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<String?> call() {
    return _authRepository.getAccessToken();
  }
}

abstract class GetUserAccessTokenUsecase {
  Future<String?> call();
}
