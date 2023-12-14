import 'dart:io';
import '../data/Booking.dart';

class NewCLI {
  Luxury create() {
    return new Luxury(
      gardenArea: this.gardenArea,
      numberOfWeeks: this.numWeeks,
      rooms: this.rooms,
      address: this.address,
      bookingDate: this.bookingDate,
      bookingID: this.bookingID,
      contactNumber: this.contactNumber,
      propertyOwnerName: this.propertyOwnerName,
      securityAlarmCheck: this.securityAlarmCheck,
      poolMaintenance: this.poolMaintenance,
    );
  }

  int get gardenArea {
    int? gardenArea = null;
    while (gardenArea == null) {
      print('Enter garden area:');
      gardenArea = int.tryParse(stdin.readLineSync() ?? '');
    }
    return gardenArea;
  }

  int get numWeeks {
    int? numberOfWeeks = null;
    while (numberOfWeeks == null) {
      print('Enter number of weeks of stay:');
      numberOfWeeks = int.tryParse(stdin.readLineSync() ?? '');
    }
    return numberOfWeeks;
  }

  int get rooms {
    int? rooms = null;
    while (rooms == null) {
      print('Enter number of rooms:');
      rooms = int.tryParse(stdin.readLineSync() ?? '');
    }
    return rooms;
  }

  String get address {
    String? address = null;
    while (address == null) {
      print('Enter address:');
      address = stdin.readLineSync();
    }
    return address;
  }

  String get bookingDate {
    String? bookingDate = null;
    while (bookingDate == null) {
      print('Enter date of booking:');
      bookingDate = stdin.readLineSync();
    }
    return bookingDate;
  }

  String get bookingID {
    String? bookingID = null;
    while (bookingID == null) {
      print('Enter booking ID:');
      bookingID = stdin.readLineSync();
    }
    return bookingID;
  }

  String get contactNumber {
    String? contactNumber = null;
    while (contactNumber == null) {
      print('Enter contact number:');
      contactNumber = stdin.readLineSync();
    }
    return contactNumber;
  }

  String get propertyOwnerName {
    String? propertyOwnerName = null;
    while (propertyOwnerName == null) {
      print('Enter property owner name:');
      propertyOwnerName = stdin.readLineSync();
    }
    return propertyOwnerName;
  }

  bool get securityAlarmCheck {
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
    return securityAlarmCheck;
  }

  bool get poolMaintenance {
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
    return poolMaintenance;
  }
}
