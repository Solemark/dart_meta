import 'dart:io';
import '../data/Booking.dart';

class SearchCLI {
  void search(List<Luxury> bookingList) {
    String? bookingID = null;
    while (bookingID == null) {
      print('Enter Booking ID');
      bookingID = stdin.readLineSync();
    }
    print(bookingList.where((item) => item.bookingID.toLowerCase() == bookingID!.toLowerCase()).first);
  }
}
