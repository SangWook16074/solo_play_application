import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:solo_play_application/src/features/auth/domain/usecases/check_email_duplicate_usecase.dart';
import 'package:test/test.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  group(CheckEmailDuplicateUsecase, () {
    late MockAuthRepository mockAuthRepository;
    late CheckEmailDuplicateUsecase checkEmailDuplicateUsecase;

    setUp(() {
      mockAuthRepository = MockAuthRepository();
      checkEmailDuplicateUsecase =
          CheckEmailDuplicateUsecaseImpl(authRepository: mockAuthRepository);
    });

    test('should return message when checkDuplicate success', () async {
      final email = "test@test.com";
      when(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).thenAnswer((_) async => Success("사용 가능한 이메일입니다!"));

      final result = await checkEmailDuplicateUsecase.call(email);

      verify(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).called(1);

      expect(result, isA<Success>());
      expect((result as Success).value, "사용 가능한 이메일입니다!");
    });

    test(
        'should return error with message correctly when checkDuplicate failure',
        () async {
      final email = "test@test.com";
      when(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).thenAnswer((_) async => Failure("이미 있는 아이디에요."));

      final result = await checkEmailDuplicateUsecase.call(email);

      verify(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).called(1);

      expect(result, isA<Failure>());
      expect((result as Failure).message, "이미 있는 아이디에요.");
    });

    test('should return error with message correctly when email is not valid',
        () async {
      final email = "invalid-email-text";
      final result = await checkEmailDuplicateUsecase.call(email);

      verifyNever(
        () => mockAuthRepository.checkEmailDuplicate(email),
      );

      expect(result, isA<Failure>());
      expect((result as Failure).message, "올바른 형식으로 입력해 주세요.");
    });
  });
}
