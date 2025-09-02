import 'package:equatable/equatable.dart';

class UserEmail extends Equatable {
  final String email;
  const UserEmail({this.email = ""});

  bool get isValid {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$');
    return emailRegex.hasMatch(email);
  }

  @override
  List<Object?> get props => [
        email,
      ];
}
