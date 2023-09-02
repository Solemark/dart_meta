import 'dart:io';
import 'booking.dart';
import 'list_cli.dart';
import 'new_cli.dart';
import 'search_cli.dart';

class BookingCLI {
  final List<String> instructions = [
    '1 to add new booking',
    '2 to search existing booking',
    '3 to list all bookings',
    '4 to update a booking',
    '5 to remove a booking',
    'Enter any other key to quit'
  ];
  List<Luxury> bookingList = [];

  BookingCLI() {
    _run();
  }

  void _run() {
    print('Booking Management System');
    while (true) {
      print('${_linebreak()}${instructions.join('\n')}');
      int? input = int.tryParse(stdin.readLineSync() ?? '0');
      switch (input) {
        case 1:
          print(_new());
          break;
        case 2:
          print(_search());
          break;
        case 3:
          print(_list());
          break;
        case 4:
          print(_update());
          break;
        case 5:
          print(_remove());
          break;
        default:
          exit(0);
      }
    }
  }

  String _new() {
    this.bookingList.add(NewCLI().create());
    return this.bookingList.last.toString();
  }

  String _search() {
    Luxury? item = SearchCLI().search(this.bookingList);
    return (item != null) ? item.toString() : 'Booking not found!';
  }

  String _list() => ListCLI().list(this.bookingList);

  String _update() => 'Not Implimented!';
  String _remove() => 'Not Implimented!';

  String _linebreak() => '--------------------\n';
}
