import 'dart:io';

void main() async {
  final file = File('students.csv');

  // 1. Write header + data
  await file.writeAsString('Name,Age,Address\n');
  // Suppose we have 3 students:
  List<Map<String, String>> students = [
    {'name': 'Alice', 'age': '20', 'address': 'Dhaka'},
    {'name': 'Bob', 'age': '22', 'address': 'Sylhet'},
    {'name': 'Charlie', 'age': '21', 'address': 'Chittagong'},
  ];
  for (var st in students) {
    String line = '${st['name']},${st['age']},${st['address']}\n';
    await file.writeAsString(line, mode: FileMode.append);
  }
  print("Written student data to students.csv");

  // 2. Read back
  String contents = await file.readAsString();
  print("Reading from students.csv:");
  print(contents);

  // Optionally, parse lines:
  List<String> lines = contents.split('\n');
  for (var line in lines) {
    if (line.trim().isEmpty) continue;
    List<String> parts = line.split(',');
    print("Name: ${parts[0]}, Age: ${parts[1]}, Address: ${parts[2]}");
  }
}
