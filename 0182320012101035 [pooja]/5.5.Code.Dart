import 'dart:io';

void main() async {
  for (int i = 1; i <= 100; i++) {
    final f = File('file_$i.txt');
    await f.writeAsString('This is file number $i');
  }
  print("Created 100 files: file_1.txt … file_100.txt");
}
