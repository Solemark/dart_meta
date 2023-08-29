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
      print('${linebreak()}\n${instructions.join('\n')}');
      int? input = int.tryParse(stdin.readLineSync() ?? '0');
      switch (input) {
        case 1:
          newStudent();
          break;
        case 2:
          searchStudent();
          break;
        case 3:
          displayStudents();
          break;
        default:
          exit(0);
      }
    }
  }

  void newStudent() {
    if (this.markArray.length >= this.maxStudents) {
      print('Max students reached!');
      return;
    }

    print('Enter student name:');
    String name = stdin.readLineSync() ?? '';

    int? mark = null;
    while (mark == null) {
      print('Enter student mark (0-100):');
      mark = int.tryParse(stdin.readLineSync() ?? '0');
    }

    this.markArray.add(new Mark(name, mark));
    print('${linebreak()}\nAdded student!\n${display(this.markArray.last)}');
  }

  void searchStudent() {
    print('Enter name of student to search');
    String search = stdin.readLineSync() ?? '';

    for (Mark item in this.markArray) {
      if (item.name.toLowerCase() == search.toLowerCase()) {
        print('${linebreak()}\nFound student!\n${display(item)}');
        return;
      }
    }
    print('Student not found!');
  }

  void displayStudents() {
    int total = 0;
    print(linebreak());
    for (Mark item in this.markArray) {
      print(display(item));
      total += item.mark;
    }
    print('Average mark is ${total / this.markArray.length}');
  }

  String linebreak() => '--------------------';

  String display(Mark item) => 'Name: ${item.name}, Mark: ${item.mark}';
}
