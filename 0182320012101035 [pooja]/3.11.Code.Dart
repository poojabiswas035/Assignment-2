Map<String, dynamic> createUser(String name, int age, {bool isActive = true}) {
  return {
    'name': name,
    'age': age,
    'isActive': isActive,
  };
}

void main() {
  var user1 = createUser("Alice", 30);
  var user2 = createUser("Bob", 25, isActive: false);

  print("User 1: $user1");
  print("User 2: $user2");
}
