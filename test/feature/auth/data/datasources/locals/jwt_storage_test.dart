import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/locals/jwt_storage_impl.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  late MockFlutterSecureStorage mockStorage;
  late JwtStorageImpl jwtStorage;
  final String accessTokenKey = JwtStorageImpl.accessTokenKey;
  final String refreshTokenKey = JwtStorageImpl.refreshTokenKey;

  setUp(() {
    mockStorage = MockFlutterSecureStorage();
    jwtStorage = JwtStorageImpl(storage: mockStorage);
  });

  group(JwtStorageImpl, () {
    test('saveAccessToken writes to storage', () async {
      const token = 'access_token_value';

      when(() => mockStorage.write(
            key: any(named: 'key'),
            value: any(named: 'value'),
          )).thenAnswer((_) async => {});

      await jwtStorage.saveAccessToken(token);

      verify(() => mockStorage.write(
            key: 'access_token',
            value: token,
          )).called(1);
    });

    test('saveRefreshToken writes to storage', () async {
      const token = 'refresh_token_value';

      when(() => mockStorage.write(
            key: any(named: 'key'),
            value: any(named: 'value'),
          )).thenAnswer((_) async => {});

      await jwtStorage.saveRefreshToken(token);

      verify(() => mockStorage.write(
            key: 'refresh_token',
            value: token,
          )).called(1);
    });

    test('readAccessToken returns stored value', () async {
      const token = 'stored_access_token';

      when(() => mockStorage.read(key: accessTokenKey))
          .thenAnswer((_) async => token);

      final result = await jwtStorage.readAccessToken();

      expect(result, token);
      verify(() => mockStorage.read(key: accessTokenKey)).called(1);
    });

    test('readRefreshToken returns stored value', () async {
      const token = 'stored_refresh_token';

      when(() => mockStorage.read(key: refreshTokenKey))
          .thenAnswer((_) async => token);

      final result = await jwtStorage.readRefreshToken();

      expect(result, token);
      verify(() => mockStorage.read(key: refreshTokenKey)).called(1);
    });

    test('deleteAccessToken deletes from storage', () async {
      when(() => mockStorage.delete(key: accessTokenKey))
          .thenAnswer((_) async => {});

      await jwtStorage.deleteAccessToken();

      verify(() => mockStorage.delete(key: accessTokenKey)).called(1);
    });

    test('deleteRefreshToken deletes from storage', () async {
      when(() => mockStorage.delete(key: refreshTokenKey))
          .thenAnswer((_) async => {});

      await jwtStorage.deleteRefreshToken();

      verify(() => mockStorage.delete(key: refreshTokenKey)).called(1);
    });
  });
}
