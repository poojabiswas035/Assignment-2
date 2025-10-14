void main() {
  List<String> friends = [
    "Alice",
    "Bob",
    "Annie",
    "Charlie",
    "Arif",
    "David",
    "Adam"
  ];

  Iterable<String> aFriends = friends.where((name) => name.toLowerCase().startsWith('a'));

  print("Friends starting with 'a': ${aFriends.toList()}");
}
