import 'dart:html';
import '../data/Booking.dart';
import 'Bookings.dart';

class GUI {
  List<Luxury> bookingList = [];
  Bookings bookings = new Bookings();
  InputElement gardenArea = InputElement();
  InputElement numberOfWeeks = InputElement();
  InputElement rooms = InputElement();
  InputElement address = InputElement();
  InputElement bookingDate = InputElement();
  InputElement bookingID = InputElement();
  InputElement contactNumber = InputElement();
  InputElement propertyOwnerName = InputElement();
  CheckboxInputElement securityAlarmCheck = CheckboxInputElement();
  CheckboxInputElement poolMaintenance = CheckboxInputElement();
  ButtonElement submitButton = ButtonElement();
  ButtonElement searchButton = ButtonElement();
  ButtonElement updateButton = ButtonElement();
  ButtonElement removeButton = ButtonElement();
  ButtonElement clearButton = ButtonElement();
  TextAreaElement displayArea = TextAreaElement();

  GUI() {
    this.gardenArea = querySelector('#gardenArea') as InputElement;
    this.numberOfWeeks = querySelector('#numberOfWeeks') as InputElement;
    this.rooms = querySelector('#rooms') as InputElement;
    this.address = querySelector('#address') as InputElement;
    this.bookingDate = querySelector('#bookingDate') as InputElement;
    this.bookingID = querySelector('#bookingID') as InputElement;
    this.contactNumber = querySelector('#contactNumber') as InputElement;
    this.propertyOwnerName =
        querySelector('#propertyOwnerName') as InputElement;
    this.securityAlarmCheck =
        querySelector('#securityAlarmCheck') as CheckboxInputElement;
    this.poolMaintenance =
        querySelector('#poolMaintenance') as CheckboxInputElement;
    this.submitButton = querySelector('#submit') as ButtonElement;
    this.searchButton = querySelector('#search') as ButtonElement;
    this.updateButton = querySelector('#update') as ButtonElement;
    this.removeButton = querySelector('#remove') as ButtonElement;
    this.clearButton = querySelector('#clear') as ButtonElement;
    this.displayArea = querySelector('#displayArea') as TextAreaElement;
  }
}
