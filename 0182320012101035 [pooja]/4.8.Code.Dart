import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\nEnter command: add, remove, view, exit");
    String? command = stdin.readLineSync();
    if (command == null) continue;

    if (command == "add") {
      stdout.write("Enter task to add: ");
      String? task = stdin.readLineSync();
      if (task != null && task.isNotEmpty) {
        tasks.add(task);
        print("Added.");
      }
    } else if (command == "remove") {
      stdout.write("Enter task to remove: ");
      String? task = stdin.readLineSync();
      if (task != null && tasks.remove(task)) {
        print("Removed.");
      } else {
        print("Task not found.");
      }
    } else if (command == "view") {
      if (tasks.isEmpty) {
        print("No tasks.");
      } else {
        print("Tasks:");
        for (var t in tasks) {
          print("- $t");
        }
      }
    } else if (command == "exit") {
      print("Exiting...");
      break;
    } else {
      print("Unknown command.");
    }
  }
}
