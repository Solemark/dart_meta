import 'dart:io';
import '../data/Booking.dart';
import 'Bookings.dart';

class UpdateCLI {
  List<Luxury> update(List<Luxury> bookingList) {
    Bookings bookings = new Bookings();
    String? input = null;
    while (input == null) {
      print('Enter the ID of the record to be updated:');
      input = stdin.readLineSync();
    }
    int index = bookingList.indexWhere((item) => item.bookingID.toLowerCase() == input!.toLowerCase());
    if (index != -1) {
      bookingList[index] = bookings.create();
    }
    return bookingList;
  }
}
