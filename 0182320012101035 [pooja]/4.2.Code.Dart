void printFruits(Set<String> fruits) {
  for (var fruit in fruits) {
    print(fruit);
  }
}

void main() {
  Set<String> fruits = {"Apple", "Banana", "Orange", "Mango"};
  printFruits(fruits);
}
