import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/locals/jwt_storage.dart';

class JwtStorageImpl extends JwtStorage {
  final FlutterSecureStorage _storage;

  @visibleForTesting
  static const accessTokenKey = 'access_token';

  @visibleForTesting
  static const refreshTokenKey = 'refresh_token';

  JwtStorageImpl({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await _storage.write(key: accessTokenKey, value: accessToken);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _storage.write(key: refreshTokenKey, value: refreshToken);
  }

  @override
  Future<String?> readAccessToken() async {
    return await _storage.read(key: accessTokenKey);
  }

  @override
  Future<String?> readRefreshToken() async {
    return await _storage.read(key: refreshTokenKey);
  }

  @override
  Future<void> deleteAccessToken() async {
    await _storage.delete(key: accessTokenKey);
  }

  @override
  Future<void> deleteRefreshToken() async {
    await _storage.delete(key: refreshTokenKey);
  }
}
