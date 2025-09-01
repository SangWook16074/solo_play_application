import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate.dart';
import 'package:solo_play_application/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:test/test.dart';

class MockAuthDatasource extends Mock implements AuthDatasource {}

void main() {
  group(AuthRepository, () {
    late MockAuthDatasource mockAuthDatasource;
    late AuthRepository authRepository;

    setUp(() {
      mockAuthDatasource = MockAuthDatasource();
      authRepository = AuthRepositoryImpl(authDatasource: mockAuthDatasource);
    });

    test('should return correctly when success', () async {
      final email = "test@test.com";
      final CheckEmailDuplicate checkEmailDuplicate =
          CheckEmailDuplicate(email: email);
      when(
        () => mockAuthDatasource.checkEmailDuplicate(checkEmailDuplicate),
      ).thenAnswer((_) async => Success("사용 가능한 이메일입니다!"));

      final result = await authRepository.checkEmailDuplicate(email);

      verify(
        () => mockAuthDatasource.checkEmailDuplicate(checkEmailDuplicate),
      ).called(1);

      expect(result, isA<Success>());
      expect((result as Success).value, "사용 가능한 이메일입니다!");
    });

    test('should return correctly when failure', () async {
      final email = "test@test.com";
      final CheckEmailDuplicate checkEmailDuplicate =
          CheckEmailDuplicate(email: email);
      when(
        () => mockAuthDatasource.checkEmailDuplicate(checkEmailDuplicate),
      ).thenAnswer((_) async => Failure("이미 있는 아이디에요."));

      final result = await authRepository.checkEmailDuplicate(email);

      verify(
        () => mockAuthDatasource.checkEmailDuplicate(checkEmailDuplicate),
      ).called(1);

      expect(result, isA<Failure>());
      expect((result as Failure).message, "이미 있는 아이디에요.");
    });
  });
}
