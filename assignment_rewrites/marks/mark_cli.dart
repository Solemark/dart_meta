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
      print('${this.linebreak}${instructions.join('\n')}');
      int? input = int.tryParse(stdin.readLineSync() ?? '0');
      switch (input) {
        case 1:
          (this.markArray.length < this.maxStudents) ? print(newStudent()) : print('${this.linebreak}MAX STUDENTS!');
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
    String? name = null;
    while (name == null) {
      print('Enter student name:');
      name = stdin.readLineSync() ?? '';
    }

    int? mark = null;
    while (mark == null) {
      print('Enter student mark (0-100):');
      mark = int.tryParse(stdin.readLineSync() ?? '0');
    }

    this.markArray.add(new Mark(name, mark));
    return '${this.linebreak}NEW STUDENT:\n${this.markArray.last.toString()}';
  }

  String searchStudent() {
    print('Enter name of student to search');
    String search = stdin.readLineSync() ?? '';
    Mark? item = this.markArray.where((item) => item.name.toLowerCase() == search.toLowerCase()).firstOrNull;
    String output =
        item != null ? '${this.linebreak}FIND STUDENT:\n${item.toString()}' : '${this.linebreak}STUDENT NOT FOUND!';
    return output;
  }

  String displayStudents() {
    String output = '${this.linebreak}DISPLAY ALL STUDENTS:';
    int total = 0;
    for (Mark item in this.markArray) {
      output += '\n${item.toString()}';
      total += item.mark;
    }
    return '$output\nAverage mark is ${total / this.markArray.length}';
  }

  String get linebreak => '--------------------\n';
}
