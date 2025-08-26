import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';
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

    test("should returns correctly when email is available", () async {
      final email = "test@test.com";
      when(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).thenAnswer((_) async =>
          EmailDuplicateStatus(result: "사용 가능한 이메일이에요!", isAvail: true));

      final result = await checkEmailDuplicateUsecase.call(email);
      verify(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).called(1);

      expect(result.isAvail, true);
      expect(result.result, "사용 가능한 이메일이에요!");
    });

    test("should returns correctly when email is available", () async {
      final email = "test@test.com";
      when(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).thenAnswer((_) async =>
          EmailDuplicateStatus(result: "이미 있는 아이디에요.", isAvail: false));

      final result = await checkEmailDuplicateUsecase.call(email);
      verify(
        () => mockAuthRepository.checkEmailDuplicate(email),
      ).called(1);

      expect(result.isAvail, false);
      expect(result.result, "이미 있는 아이디에요.");
    });
  });
}
