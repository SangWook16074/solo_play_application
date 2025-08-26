import 'package:solo_play_application/src/core/utils/networks/result.dart';
import 'package:solo_play_application/src/features/auth/data/datasources/remotes/auth_datasource.dart';
import 'package:solo_play_application/src/features/auth/data/dtos/check_email_duplicate.dart';
import 'package:solo_play_application/src/features/auth/domain/entities/email_duplicate_status.dart';
import 'package:solo_play_application/src/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDatasource _authDatasource;

  AuthRepositoryImpl({
    required AuthDatasource authDatasource,
  }) : _authDatasource = authDatasource;

  @override
  Future<EmailDuplicateStatus> checkEmailDuplicate(String email) {
    return _authDatasource
        .checkEmailDuplicate(CheckEmailDuplicate(email: email))
        .then((result) {
      return switch (result) {
        Success() => EmailDuplicateStatus(result: result.value, isAvail: true),
        Failure() =>
          EmailDuplicateStatus(result: result.message, isAvail: false),
      };
    });
  }
}
