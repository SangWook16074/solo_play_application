import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/get_user_access_token_usecase.dart';
import 'package:test/test.dart';

import '../mocks/mock_auth_repository.dart';

void main() {
  group(GetUserAccessTokenUsecase, () {
    late MockAuthRepository mockAuthRepository;
    late GetUserAccessTokenUsecase getUserAccessTokenUsecase;

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      getUserAccessTokenUsecase =
          GetUserAccessTokenUsecaseImpl(authRepository: mockAuthRepository);
    });

    test('should return access token when user logined', () async {
      when(() => mockAuthRepository.getAccessToken())
          .thenAnswer((_) async => "access-token");
      final result = await getUserAccessTokenUsecase.call();

      verify(
        () => mockAuthRepository.getAccessToken(),
      ).called(1);

      expect(result, 'access-token');
    });

    test('should return null when user not logined', () async {
      when(() => mockAuthRepository.getAccessToken())
          .thenAnswer((_) async => null);
      final result = await getUserAccessTokenUsecase.call();

      verify(
        () => mockAuthRepository.getAccessToken(),
      ).called(1);

      expect(result, isNull);
    });
  });
}
