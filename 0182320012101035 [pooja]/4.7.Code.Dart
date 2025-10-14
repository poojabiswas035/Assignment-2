void main() {
  Map<String, String> contacts = {
    "John": "1234",
    "Dave": "5678",
    "Alex": "9101",
    "Sue": "1122"
  };

  Iterable<String> keysLen4 = contacts.keys.where((k) => k.length == 4);

  print("Keys with length 4: ${keysLen4.toList()}");
}
