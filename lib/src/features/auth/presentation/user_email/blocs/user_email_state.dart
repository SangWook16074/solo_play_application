import 'package:equatable/equatable.dart';

class UserEmailState extends Equatable {
  final String email;
  final String errorMessage;
  final bool isAvail;
  final bool isValid;

  const UserEmailState(
      {this.email = "",
      this.errorMessage = "",
      this.isAvail = false,
      this.isValid = false});

  UserEmailState copyWith({
    String? email,
    String? errorMessage,
    bool? isAvail,
    bool? isValid,
  }) {
    return UserEmailState(
        email: email ?? this.email,
        errorMessage: errorMessage ?? this.errorMessage,
        isAvail: isAvail ?? this.isAvail,
        isValid: isAvail ?? this.isValid);
  }

  @override
  List<Object?> get props => [
        email,
        errorMessage,
        isAvail,
      ];
}
