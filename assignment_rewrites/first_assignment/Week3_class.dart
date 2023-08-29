import 'dart:io';

class Week3 {
  Week3() {
    cli();
  }

  String getGrade(int mark) {
    String output = '';
    switch (mark) {
      case (<= 49):
        output = 'Student has failed';
        break;
      case (<= 64):
        output = 'Student has passed';
        break;
      case (<= 74):
        output = 'Student has recieved a credit';
        break;
      case (<= 84):
        output = 'Student has recieved a distinction';
        break;
      case (>= 85):
        output = 'Student has recieved a high distinction';
        break;
      default:
        output = 'Invalid mark!';
    }
    return output;
  }

  void cli() {
    int mark = 0;

    print('Enter student grade (0-100):');
    mark = int.parse(stdin.readLineSync() ?? '0');

    print(getGrade(mark));
  }
}

void main() {
  Week3();
}
