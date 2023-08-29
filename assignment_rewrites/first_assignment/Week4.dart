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
  String name = '';
  int mark = 0;
  int total = 0;
  int average = 0;

  for (int i = max; i > 0; i--) {
    print('Enter student name:');
    name = stdin.readLineSync() ?? '';

    print('Enter student mark (0-100):');
    mark = int.parse(stdin.readLineSync() ?? '0');

    print(getGrade(mark, name));
    total += mark;
  }
  average = (total / max).round();
  print('The average mark is $average');
}

void main() {
  cli();
}
