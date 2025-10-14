String reverseString(String s) {
  return s.split('').reversed.join('');
}

void main() {
  String result = reverseString("DartLang");
  print("Reversed String: $result");
}
