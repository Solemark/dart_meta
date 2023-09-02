import 'dart:io';
import 'booking.dart';

class NewCLI {
  Luxury create() {
    return new Luxury(
        this._getGardenArea(),
        this._getNumWeeks(),
        this._getRooms(),
        this._getAddress(),
        this._getBookingDate(),
        this._getBookingID(),
        this._getContactNumber(),
        this._getPropertyOwnerName(),
        this._getSecurityAlarmCheck(),
        this._getPoolMaintenance());
  }

  int _getGardenArea() {
    int? gardenArea = null;
    while (gardenArea == null) {
      print('Enter garden area:');
      gardenArea = int.tryParse(stdin.readLineSync() ?? '');
    }
    return gardenArea;
  }

  int _getNumWeeks() {
    int? numberOfWeeks = null;
    while (numberOfWeeks == null) {
      print('Enter number of weeks of stay:');
      numberOfWeeks = int.tryParse(stdin.readLineSync() ?? '');
    }
    return numberOfWeeks;
  }

  int _getRooms() {
    int? rooms = null;
    while (rooms == null) {
      print('Enter number of rooms:');
      rooms = int.tryParse(stdin.readLineSync() ?? '');
    }
    return rooms;
  }

  String _getAddress() {
    String? address = null;
    while (address == null) {
      print('Enter address:');
      address = stdin.readLineSync();
    }
    return address;
  }

  String _getBookingDate() {
    String? bookingDate = null;
    while (bookingDate == null) {
      print('Enter date of booking:');
      bookingDate = stdin.readLineSync();
    }
    return bookingDate;
  }

  String _getBookingID() {
    String? bookingID = null;
    while (bookingID == null) {
      print('Enter booking ID:');
      bookingID = stdin.readLineSync();
    }
    return bookingID;
  }

  String _getContactNumber() {
    String? contactNumber = null;
    while (contactNumber == null) {
      print('Enter contact number:');
      contactNumber = stdin.readLineSync();
    }
    return contactNumber;
  }

  String _getPropertyOwnerName() {
    String? propertyOwnerName = null;
    while (propertyOwnerName == null) {
      print('Enter property owner name:');
      propertyOwnerName = stdin.readLineSync();
    }
    return propertyOwnerName;
  }

  bool _getSecurityAlarmCheck() {
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

  bool _getPoolMaintenance() {
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
