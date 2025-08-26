import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate.dart';
import 'package:solo_play_application/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:test/test.dart';

class MockAuthDatasource extends Mock implements AuthDatasource {}

void main() {
  group(AuthRepositoryImpl, () {
    late MockAuthDatasource mockAuthDatasource;
    late AuthRepositoryImpl authRepository;

    setUp(() {
      mockAuthDatasource = MockAuthDatasource();
      authRepository = AuthRepositoryImpl(authDatasource: mockAuthDatasource);
    });

    test('should returns correctly when email available', () async {
      final email = "test@test.com";
      when(
        () => mockAuthDatasource
            .checkEmailDuplicate(CheckEmailDuplicate(email: email)),
      ).thenAnswer((_) async => Success("사용 가능한 이메일입니다!"));

      final result = await authRepository.checkEmailDuplicate(email);

      verify(
        () => mockAuthDatasource
            .checkEmailDuplicate(CheckEmailDuplicate(email: email)),
      ).called(1);

      expect(result.isAvail, true);
      expect(result.result, "사용 가능한 이메일입니다!");
    });

    test('should return correctly when email duplicate error', () async {
      final email = "test@test.com";

      when(
        () => mockAuthDatasource
            .checkEmailDuplicate(CheckEmailDuplicate(email: email)),
      ).thenAnswer((_) async => Failure("이미 있는 아이디에요."));

      final result = await authRepository.checkEmailDuplicate(email);

      verify(
        () => mockAuthDatasource
            .checkEmailDuplicate(CheckEmailDuplicate(email: email)),
      ).called(1);

      expect(result.isAvail, false);
      expect(result.result, "이미 있는 아이디에요.");
    });
  });
}
