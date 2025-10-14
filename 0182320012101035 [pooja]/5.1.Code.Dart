import 'dart:io';

void main() async {
  final file = File('hello.txt');
  String myName = "Your Name Here";
  // write (overwrite or create) with your name
  await file.writeAsString(myName);
  print("Wrote name to hello.txt");
}
