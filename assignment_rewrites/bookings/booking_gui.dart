import 'dart:html';

import 'booking.dart';
import 'bookings.dart';

class BookingGUI {
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

  BookingGUI() {
    this.bookingID.value = (this.bookingList.length + 1).toString();
    this.submitButton.onClick.listen(submit);
    this.searchButton.onClick.listen(search);
    this.updateButton.onClick.listen(update);
    this.removeButton.onClick.listen(remove);
    this.clearButton.onClick.listen(clear);
    this.saveButton.onClick.listen(save);
  }

  void submit(Event e) {
    bookingList.add(new Luxury(
        int.parse(gardenArea.value ?? '0'),
        int.parse(numberOfWeeks.value ?? '0'),
        int.parse(rooms.value ?? '0'),
        address.value ?? '',
        bookingDate.value ?? '',
        bookingID.value ?? '',
        contactNumber.value ?? '',
        propertyOwnerName.value ?? '',
        securityAlarmCheck.checked ?? false,
        poolMaintenance.checked ?? false));

    clear(e);
  }

  void search(Event e) => print(bookingID.value);
  void update(Event e) => UnimplementedError;
  void remove(Event e) => UnimplementedError;
  void clear(Event e) {
    bookingID.value = (this.bookingList.length + 1).toString();
    gardenArea.value = '';
    numberOfWeeks.value = '';
    rooms.value = '';
    address.value = '';
    bookingDate.value = '';
    contactNumber.value = '';
    propertyOwnerName.value = '';
    securityAlarmCheck.checked = false;
    poolMaintenance.checked = false;
  }

  void save(Event e) => UnimplementedError;
}
