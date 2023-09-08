import 'dart:io';
import '../data/booking.dart';
import 'bookings.dart';

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
  Bookings bookings = new Bookings();

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
    this.bookingList.add(bookings.create());
    return this.bookingList.last.toString();
  }

  String _search() => bookings.search(this.bookingList);
  String _list() => bookings.list(this.bookingList);

  String _update() {
    this.bookingList = bookings.update(this.bookingList);
    return '${this._list()}';
  }

  String _remove() {
    this.bookingList = bookings.remove(this.bookingList);
    return '${this._list()}';
  }

  String _linebreak() => '--------------------\n';
}
