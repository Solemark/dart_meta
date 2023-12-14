import 'dart:io';
import '../data/Booking.dart';
import 'Bookings.dart';

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
      print('${linebreak}${instructions.join('\n')}');
      int? input = int.tryParse(stdin.readLineSync() ?? '0');
      switch (input) {
        case 1:
          this.newBooking;
          print(this.bookingList.last);
          break;
        case 2:
          this.searchBooking;
          break;
        case 3:
          this.listBooking;
          break;
        case 4:
          this.updateBooking;
          this.listBooking;
          break;
        case 5:
          this.removeBooking;
          this.listBooking;
          break;
        default:
          exit(0);
      }
    }
  }

  void get newBooking => this.bookingList.add(bookings.create());
  void get searchBooking => bookings.search(this.bookingList);
  void get listBooking => print(this.bookingList);
  void get updateBooking => this.bookingList = bookings.update(this.bookingList);
  void get removeBooking => this.bookingList = bookings.remove(this.bookingList);
  String get linebreak => '--------------------\n';
}
