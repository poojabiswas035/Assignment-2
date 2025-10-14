num calculateArea({num length = 1, num width = 1}) {
  return length * width;
}

void main() {
  print("Area (default): ${calculateArea()}");
  print("Area (5 × 3): ${calculateArea(length: 5, width: 3)}");
  print("Area (only length): ${calculateArea(length: 4)}");
}
