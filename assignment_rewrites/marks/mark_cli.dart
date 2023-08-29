import 'dart:io';
import 'mark.dart';

class MarkCLI {
  final int maxStudents = 10;
  final List<String> instructions = [
    '1 to add new student',
    '2 to search existing student',
    '3 to display all students',
    'Enter any other key to quit'
  ];
  List<Mark> markArray = [];

  MarkCLI() {
    run();
  }

  void run() {
    print('University Mark Management System');
    while (true) {
      print('${linebreak()}${instructions.join('\n')}');
      int? input = int.tryParse(stdin.readLineSync() ?? '0');
      switch (input) {
        case 1:
          (this.markArray.length < this.maxStudents)
              ? print(newStudent())
              : print('${linebreak()}MAX STUDENTS!');
          break;
        case 2:
          print(searchStudent());
          break;
        case 3:
          print(displayStudents());
          break;
        default:
          exit(0);
      }
    }
  }

  String newStudent() {
    print('Enter student name:');
    String name = stdin.readLineSync() ?? '';

    int? mark = null;
    while (mark == null) {
      print('Enter student mark (0-100):');
      mark = int.tryParse(stdin.readLineSync() ?? '0');
    }

    this.markArray.add(new Mark(name, mark));
    return '${linebreak()}NEW STUDENT:\n${display(this.markArray.last)}';
  }

  String searchStudent() {
    String output = '${linebreak()}STUDENT NOT FOUND!';
    print('Enter name of student to search');
    String search = stdin.readLineSync() ?? '';

    for (Mark item in this.markArray) {
      if (item.name.toLowerCase() == search.toLowerCase()) {
        output = '${linebreak()}FIND STUDENT:\n${display(item)}';
      }
    }
    return output;
  }

  String displayStudents() {
    String output = '${linebreak()}DISPLAY ALL STUDENTS:';
    int total = 0;
    for (Mark item in this.markArray) {
      output += '\n${display(item)}';
      total += item.mark;
    }
    return '$output\nAverage mark is ${total / this.markArray.length}';
  }

  String linebreak() => '--------------------\n';

  String display(Mark item) => 'Name: ${item.name}, Mark: ${item.mark}';
}
