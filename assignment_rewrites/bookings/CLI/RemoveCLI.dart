import 'dart:io';
import '../data/Booking.dart';

class RemoveCLI {
  List<Luxury> remove(List<Luxury> bookingList) {
    String? input = null;
    while (input == null) {
      print('Enter the ID of the record to be deleted:');
      input = stdin.readLineSync();
    }
    bookingList.removeWhere((item) => item.bookingID.toLowerCase() == input!.toLowerCase());
    return bookingList;
  }
}
