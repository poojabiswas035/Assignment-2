import 'dart:io';

void main() {
  print("How many expenses?");
  String? countInput = stdin.readLineSync();
  int count = int.tryParse(countInput ?? "0") ?? 0;

  List<double> expenses = [];

  for (int i = 0; i < count; i++) {
    stdout.write("Enter expense ${i + 1}: ");
    String? line = stdin.readLineSync();
    double value = double.tryParse(line ?? "0") ?? 0.0;
    expenses.add(value);
  }

  double total = expenses.fold(0.0, (sum, e) => sum + e);
  print("Total expenses: $total");
}
