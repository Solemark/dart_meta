import 'dart:io';
import 'mark.dart';

class MarkCLI {
  final int maxStudents = 10;
  List<Mark> markArray = [];

  MarkCLI() {
    run();
  }

  void run() {
    print('University Mark Management System');
    while (true) {
      print(
          '\n1 to add new student\n2 to search existing student\n3 to display all students\nEnter any other key to quit');
      int input = int.parse(stdin.readLineSync() ?? '0');
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

    print('Enter student mark (0-100):');
    int mark = int.parse(stdin.readLineSync() ?? '0');

    this.markArray.add(new Mark(name, mark));
    print('Added student!\n${display(this.markArray.last)}');
  }

  void searchStudent() {
    print('Enter name of student to search');
    String search = stdin.readLineSync() ?? '';

    for (Mark item in this.markArray) {
      if (item.name.toLowerCase() == search.toLowerCase()) {
        print('Found student!\n${display(item)}');
        return;
      }
    }
    print('Student not found!');
  }

  void displayStudents() {
    int total = 0;
    for (Mark item in this.markArray) {
      print(display(item));
      total += item.mark;
    }
    print('Average mark is ${total / this.markArray.length}');
  }

  String display(Mark item) => 'Name: ${item.name}, Mark: ${item.mark}';
}
