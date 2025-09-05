import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/login_info.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/user_login_usecase.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late MockAuthRepository mockAuthRepository;
  late UserLoginUsecaseImpl usecase;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    usecase = UserLoginUsecaseImpl(authRepository: mockAuthRepository);
  });

  final testEmail = 'test@test.com';
  final testPassword = 'password';
  final testLoginInfo = LoginInfo(email: testEmail, password: testPassword);

  group(UserLoginUsecase, () {
    test('should return Success when repository login succeeds', () async {
      // given
      when(() => mockAuthRepository.login(testLoginInfo))
          .thenAnswer((_) async => const Result.success(null));

      // when
      final result = await usecase.call(testEmail, testPassword);

      // then
      expect(result, isA<Success<void>>());
      verify(() => mockAuthRepository.login(testLoginInfo)).called(1);
    });

    test('should return Failure when repository login fails', () async {
      // given
      const errorMessage = 'Invalid credentials';
      when(() => mockAuthRepository.login(testLoginInfo))
          .thenAnswer((_) async => const Result.failure(errorMessage));

      // when
      final result = await usecase.call(testEmail, testPassword);

      // then
      expect(result, isA<Failure>());

      expect((result as Failure).message, 'Invalid credentials');

      verify(() => mockAuthRepository.login(testLoginInfo)).called(1);
    });
  });
}
