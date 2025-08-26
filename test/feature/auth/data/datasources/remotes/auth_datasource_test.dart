import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/api_path.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource_impl.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate.dart';
import 'package:test/test.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group(AuthDatasourceImpl, () {
    late MockDio mockDio;
    late AuthDatasourceImpl authDatasourceImpl;

    setUp(() {
      mockDio = MockDio();
      authDatasourceImpl = AuthDatasourceImpl(dio: mockDio);
    });

    test('should returns success with data when statusCode == 200', () async {
      when(() => mockDio.post(AuthApiPath.checkEmailDuplicate))
          .thenAnswer((_) async => Response(
                requestOptions: RequestOptions(path: ""),
                data: {
                  "status": "SUCCESS",
                  "message": "",
                  "data": "사용 가능한 이메일입니다.",
                },
                statusCode: 200,
              ));

      final request = CheckEmailDuplicate(email: "test@test.com");
      final result = await authDatasourceImpl.checkEmailDuplicate(request);
      verify(() => mockDio.post(AuthApiPath.checkEmailDuplicate)).called(1);

      expect(result is Success, true);
      expect((result as Success).value, "사용 가능한 이메일입니다.");
    });

    test('should return failure with message when statusCode != 200', () async {
      when(() => mockDio.post(AuthApiPath.checkEmailDuplicate))
          .thenAnswer((_) async => Response(
                requestOptions: RequestOptions(path: ""),
                data: {
                  "status": "ERROR",
                  "message": "이미 있는 아이디에요.",
                  "data": null,
                },
                statusCode: 400,
              ));

      final request = CheckEmailDuplicate(email: "test@test.com");
      final result = await authDatasourceImpl.checkEmailDuplicate(request);

      verify(() => mockDio.post(AuthApiPath.checkEmailDuplicate)).called(1);

      expect(result is Failure, true);
      expect((result as Failure).message, "이미 있는 아이디에요.");
    });
  });
}
