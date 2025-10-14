void main() {
  Map<String, dynamic> person = {
    'name': "Alice",
    'address': "123 Main St",
    'age': 28,
    'country': "Bangladesh"
  };

  // Update country
  person['country'] = "Canada";

  // Print all keys and values
  person.forEach((key, value) {
    print("$key : $value");
  });
}
