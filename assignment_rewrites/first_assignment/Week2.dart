import 'dart:io';

void cli() {
  final int maxMarks = 65;
  String name = '';
  int mark = 0;
  int total = 0;

  print('Enter the name of the student:');
  name = stdin.readLineSync() ?? '';

  print('Enter the mark of $name out of $maxMarks:');
  mark = int.parse(stdin.readLineSync() ?? '0');

  total = ((mark * 100) / maxMarks).round();
  print("$name recieved $total% of total marks.");
}

void main() {
  cli();
}
