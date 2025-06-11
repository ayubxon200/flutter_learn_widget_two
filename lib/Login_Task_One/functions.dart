bool checkEmail(String email) {
  final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  return emailRegex.hasMatch(email);
}

bool checkPassword(String password) {
  final lowerCase = RegExp(r'[a-z]');
  final upperCase = RegExp(r'[A-Z]');
  final number = RegExp(r'[0-9]');


  if(!password.contains(lowerCase)) {
    return false;
  } else if(!password.contains(upperCase)) {
    return false;
  } else if(!password.contains(number)) {
    return false;
  }
  return true;
}