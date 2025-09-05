class PasswordValidator {
  static bool isValidPassword(String password) {
    if (password.length < 8 || password.length > 20) return false;

    bool hasLetter = password.contains(RegExp(r'[a-zA-Z]'));
    bool hasNumber = password.contains(RegExp(r'[0-9]'));
    bool hasSpecialChar = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

    return hasLetter && hasNumber && hasSpecialChar;
  }

  static bool doPasswordsMatch(String password, String confirmPassword) {
    return password == confirmPassword && password.isNotEmpty;
  }
}
