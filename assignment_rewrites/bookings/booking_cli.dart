import 'dart:io';
import 'booking.dart';

class BookingCLI {
  final List<String> instructions = [
    '1 to add new booking',
    '2 to search existing booking',
    '3 to display all bookings',
    '4 to update a booking',
    '5 to remove a booking',
    'Enter any other key to quit'
  ];
  List<Luxury> bookingList = [];

  BookingCLI() {
    run();
  }

  void run() {
    print('Booking Management System');
    while (true) {
      print('${linebreak()}${instructions.join('\n')}');
      int? input = int.tryParse(stdin.readLineSync() ?? '0');
      switch (input) {
        case 1:
          print(newBooking());
          break;
        case 2:
          print(searchBooking());
          break;
        case 3:
          print(displayBookings());
          break;
        case 4:
          print(updateBooking());
          break;
        case 5:
          print(removeBooking());
          break;
        default:
          exit(0);
      }
    }
  }

  String newBooking() {
    int? gardenArea = null;
    while (gardenArea == null) {
      print('Enter garden area:');
      gardenArea = int.tryParse(stdin.readLineSync() ?? '');
    }

    int? numberOfWeeks = null;
    while (numberOfWeeks == null) {
      print('Enter number of weeks of stay:');
      numberOfWeeks = int.tryParse(stdin.readLineSync() ?? '');
    }

    int? rooms = null;
    while (rooms == null) {
      print('Enter number of rooms:');
      rooms = int.tryParse(stdin.readLineSync() ?? '');
    }

    String? address = null;
    while (address == null) {
      print('Enter address:');
      address = stdin.readLineSync();
    }

    String? bookingDate = null;
    while (bookingDate == null) {
      print('Enter date of booking:');
      bookingDate = stdin.readLineSync();
    }

    String? bookingID = null;
    while (bookingID == null) {
      print('Enter booking ID:');
      bookingID = stdin.readLineSync();
    }

    String? contactNumber = null;
    while (contactNumber == null) {
      print('Enter contact number:');
      contactNumber = stdin.readLineSync();
    }

    String? propertyOwnerName = null;
    while (propertyOwnerName == null) {
      print('Enter property owner name:');
      propertyOwnerName = stdin.readLineSync();
    }

    bool? securityAlarmCheck = null;
    while (securityAlarmCheck == null) {
      print('Perform security alarm check? (Y/N)');
      String? input = stdin.readLineSync();
      if (input != null) {
        if (input.toLowerCase() == 'y') {
          securityAlarmCheck = true;
        }
        if (input.toLowerCase() == 'n') {
          securityAlarmCheck = false;
        }
      }
    }

    bool? poolMaintenance = null;
    while (poolMaintenance == null) {
      print('Perform pool maintenance? (Y/N)');
      String? input = stdin.readLineSync();
      if (input != null) {
        if (input.toLowerCase() == 'y') {
          poolMaintenance = true;
        }
        if (input.toLowerCase() == 'n') {
          poolMaintenance = false;
        }
      }
    }

    this.bookingList.add(new Luxury(
        gardenArea,
        numberOfWeeks,
        rooms,
        address,
        bookingDate,
        bookingID,
        contactNumber,
        propertyOwnerName,
        securityAlarmCheck,
        poolMaintenance));

    return display(this.bookingList.last);
  }

  String searchBooking() {
    String output = 'Booking not found!';
    String? bookingID = null;
    while (bookingID == null) {
      print('Enter Booking ID');
      bookingID = stdin.readLineSync();
    }
    for (Luxury item in this.bookingList) {
      if (item.bookingID.toLowerCase() == bookingID.toLowerCase()) {
        output = display(item);
      }
    }
    return output;
  }

  String displayBookings() {
    String output = '';
    for (Luxury item in this.bookingList) {
      output = '$output\n${display(item)}';
    }
    return output;
  }

  String updateBooking() => 'Not Implimented!';
  String removeBooking() => 'Not Implimented!';

  String linebreak() => '--------------------\n';

  String display(Luxury item) =>
      'Garden Area: ${item.gardenArea} : \$${item.gardenAreaCost}, ${item.rooms} : \$${item.roomsCost}, Weeks: ${item.numberOfWeeks}, Address: ${item.address}, Booking: ${item.bookingID} : ${item.bookingDate}, Contact Number: ${item.contactNumber}, Owner: ${item.propertyOwnerName}, Luxuries: ${item.securityAlarmCheck} : ${item.poolMaintenance}';
}
