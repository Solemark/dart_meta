import 'dart:io';

void cli() {
  final int maxMarks = 65;

  print('Enter the name of the student:');
  String name = stdin.readLineSync() ?? '';

  print('Enter the mark of $name out of $maxMarks:');
  int mark = int.parse(stdin.readLineSync() ?? '0');

  print("$name recieved ${((mark * 100) / maxMarks).round()}% of total marks.");
}

void main() {
  cli();
}
