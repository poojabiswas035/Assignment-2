import 'dart:io';

void main() async {
  final file = File('hello.txt');
  String friendName = "Friend Name";
  // append friendName (with newline)
  await file.writeAsString('\n$friendName', mode: FileMode.append);
  print("Appended friend name to hello.txt");
}
