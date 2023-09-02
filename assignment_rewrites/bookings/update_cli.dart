import 'dart:io';

import 'booking.dart';
import 'new_cli.dart';

class UpdateCLI {
  List<Luxury> update(List<Luxury> bookingList) {
    String? input = null;
    while (input == null) {
      print('Enter the ID of the record to be updated:');
      input = stdin.readLineSync();
    }
    for (int i = 0; i < bookingList.length; i++) {
      if (bookingList[i].bookingID.toLowerCase() == input.toLowerCase()) {
        print('Found Record!');
        bookingList[i] = NewCLI().create();
      }
    }
    return bookingList;
  }
}
