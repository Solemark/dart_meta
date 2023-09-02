import 'dart:io';
import 'booking.dart';

class SearchBookingCLI {
  Luxury? bookingSearch(List<Luxury> bookingList) {
    Luxury? output = null;
    String? bookingID = null;
    while (bookingID == null) {
      print('Enter Booking ID');
      bookingID = stdin.readLineSync();
    }
    for (Luxury item in bookingList) {
      if (item.bookingID.toLowerCase() == bookingID.toLowerCase()) {
        output = item;
      }
    }
    return output;
  }
}
