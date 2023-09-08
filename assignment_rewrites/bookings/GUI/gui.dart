import 'dart:html';
import '../data/booking.dart';
import 'bookings.dart';

class GUI {
  List<Luxury> bookingList = [];
  Bookings bookings = new Bookings();

  final InputElement gardenArea = querySelector('#gardenArea') as InputElement;
  final InputElement numberOfWeeks = querySelector('#numberOfWeeks') as InputElement;
  final InputElement rooms = querySelector('#rooms') as InputElement;
  final InputElement address = querySelector('#address') as InputElement;
  final InputElement bookingDate = querySelector('#bookingDate') as InputElement;
  final InputElement bookingID = querySelector('#bookingID') as InputElement;
  final InputElement contactNumber = querySelector('#contactNumber') as InputElement;
  final InputElement propertyOwnerName = querySelector('#propertyOwnerName') as InputElement;
  final CheckboxInputElement securityAlarmCheck = querySelector('#securityAlarmCheck') as CheckboxInputElement;
  final CheckboxInputElement poolMaintenance = querySelector('#poolMaintenance') as CheckboxInputElement;
  final ButtonElement submitButton = querySelector('#submit') as ButtonElement;
  final ButtonElement searchButton = querySelector('#search') as ButtonElement;
  final ButtonElement updateButton = querySelector('#update') as ButtonElement;
  final ButtonElement removeButton = querySelector('#remove') as ButtonElement;
  final ButtonElement clearButton = querySelector('#clear') as ButtonElement;
  final ButtonElement saveButton = querySelector('#save') as ButtonElement;
  final TextAreaElement displayArea = querySelector('#displayArea') as TextAreaElement;
}
