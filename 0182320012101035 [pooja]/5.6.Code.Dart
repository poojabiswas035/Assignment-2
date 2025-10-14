import 'dart:io';

void main() async {
  final f = File('hello_copy.txt');
  if (await f.exists()) {
    await f.delete();
    print("hello_copy.txt deleted.");
  } else {
    print("hello_copy.txt does not exist.");
  }
}
