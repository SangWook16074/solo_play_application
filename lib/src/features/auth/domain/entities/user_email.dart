import 'package:equatable/equatable.dart';

class UserEmail extends Equatable {
  final String email;
  final String resultMessage;
  final bool isAvail;
  const UserEmail(
      {this.email = "", this.resultMessage = "", this.isAvail = false});

  bool get isValid {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$');
    return emailRegex.hasMatch(email);
  }

  @override
  List<Object?> get props => [
        email,
        resultMessage,
        isAvail,
      ];
}
