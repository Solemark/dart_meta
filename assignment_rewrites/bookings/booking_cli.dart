import 'dart:io';
import 'booking.dart';
import 'list_booking_cli.dart';
import 'new_booking_cli.dart';
import 'search_booking_cli.dart';

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
          print(_newBooking());
          break;
        case 2:
          print(_searchBooking());
          break;
        case 3:
          print(_listBooking());
          break;
        case 4:
          print(_updateBooking());
          break;
        case 5:
          print(_removeBooking());
          break;
        default:
          exit(0);
      }
    }
  }

  String _newBooking() {
    this.bookingList.add(NewBookingCLI().createNewBooking());
    return this.bookingList.last.toString();
  }

  String _searchBooking() {
    Luxury? item = SearchBookingCLI().bookingSearch(this.bookingList);
    return (item != null) ? item.toString() : 'Booking not found!';
  }

  String _listBooking() => ListBookingCLI().listBookings(this.bookingList);

  String _updateBooking() => 'Not Implimented!';
  String _removeBooking() => 'Not Implimented!';

  String _linebreak() => '--------------------\n';
}
