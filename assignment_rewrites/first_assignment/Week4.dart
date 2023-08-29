import 'dart:io';

String getGrade(int mark, String name) {
  String output = '';
  switch (mark) {
    case (<= 49):
      output = '$name has failed';
      break;
    case (<= 64):
      output = '$name has passed';
      break;
    case (<= 74):
      output = '$name has recieved a credit';
      break;
    case (<= 84):
      output = '$name has recieved a distinction';
      break;
    case (>= 85):
      output = '$name has recieved a high distinction';
      break;
    default:
      output = 'Invalid mark!';
  }
  return output;
}

void cli() {
  print('\t\tMark Entry System');
  final max = 3;
  int total = 0;
  for (int i = max; i > 0; i--) {
    print('Enter student name:');
    String name = stdin.readLineSync() ?? '';

    print('Enter student mark (0-100):');
    int mark = int.parse(stdin.readLineSync() ?? '0');

    print(getGrade(mark, name));
    total += mark;
  }
  print('The average mark is ${(total / max).round()}');
}

void main() {
  cli();
}
