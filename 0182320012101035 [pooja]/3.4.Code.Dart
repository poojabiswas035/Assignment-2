import 'dart:math';

String generateRandomPassword(int length) {
  const chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  Random rnd = Random();
  return String.fromCharCodes(
    Iterable.generate(length, (_) => chars.codeUnitAt(rnd.nextInt(chars.length))),
  );
}

void main() {
  String password = generateRandomPassword(8);
  print("Random Password: $password");
}
