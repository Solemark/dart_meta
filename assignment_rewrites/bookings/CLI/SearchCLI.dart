import 'dart:io';
import '../data/Booking.dart';

class SearchCLI {
  void search(List<Luxury> bookingList) {
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
    print(output ?? 'Booking not found!');
  }
}
