import 'package:equatable/equatable.dart';

class UserEmailState extends Equatable {
  final String email;
  final String errorMessage;
  final bool isAvail;

  const UserEmailState(
      {this.email = "", this.errorMessage = "", this.isAvail = false});

  UserEmailState copyWith({
    String? email,
    String? errorMessage,
    bool? isAvail,
  }) {
    return UserEmailState(
        email: email ?? this.email,
        errorMessage: errorMessage ?? this.errorMessage,
        isAvail: isAvail ?? this.isAvail);
  }

  @override
  List<Object?> get props => [
        email,
        errorMessage,
        isAvail,
      ];
}
