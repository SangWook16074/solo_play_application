import 'package:equatable/equatable.dart';

enum UserEmailStatus { empty, valid, invalid }

class UserEmailState extends Equatable {
  final String email;
  final String errorMessage;
  final bool isAvail;
  final UserEmailStatus status;

  const UserEmailState(
      {this.email = "",
      this.errorMessage = "",
      this.isAvail = false,
      this.status = UserEmailStatus.empty});

  UserEmailState copyWith({
    String? email,
    String? errorMessage,
    bool? isAvail,
    UserEmailStatus? status,
  }) {
    return UserEmailState(
        email: email ?? this.email,
        errorMessage: errorMessage ?? this.errorMessage,
        isAvail: isAvail ?? this.isAvail,
        status: status ?? this.status);
  }

  @override
  List<Object?> get props => [
        email,
        errorMessage,
        isAvail,
      ];
}
