import 'dart:io';
import 'booking.dart';

class RemoveCLI {
  List<Luxury> remove(List<Luxury> bookingList) {
    List<Luxury> output = [];
    String? input = '';
    while (input == null) {
      print('Enter the ID of the record to be deleted:');
      input = stdin.readLineSync();
    }
    for (Luxury item in bookingList) {
      if (item.bookingID.toLowerCase() != input.toLowerCase()) {
        output.add(item);
      }
    }
    return output;
  }
}
