import 'dart:math';

num power(num base, num exponent) {
  return pow(base, exponent);
}

void main() {
  num result = power(5, 3);
  print("5^3 = $result");
}
