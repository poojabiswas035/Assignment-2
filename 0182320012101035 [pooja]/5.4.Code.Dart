import 'dart:io';

void main() async {
  final src = File('hello.txt');
  final dest = File('hello_copy.txt');
  await src.copy(dest.path);
  print("Copied hello.txt to hello_copy.txt");
}
