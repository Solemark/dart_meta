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
  final TextAreaElement displayArea = querySelector('#displayArea') as TextAreaElement;

  BookingGUI() {
    this.bookingID.value = (this.bookingList.length + 1).toString();
    this.submitButton.onClick.listen(this.submit);
    this.searchButton.onClick.listen(this.search);
    this.updateButton.onClick.listen(this.update);
    this.removeButton.onClick.listen(this.remove);
    this.clearButton.onClick.listen(this.clear);
    this.saveButton.onClick.listen(this.save);
  }

  void submit(Event e) {
    Luxury item = new Luxury(
        int.parse(this.gardenArea.value ?? '0'),
        int.parse(this.numberOfWeeks.value ?? '0'),
        int.parse(this.rooms.value ?? '0'),
        this.address.value ?? '',
        this.bookingDate.value ?? '',
        this.bookingID.value ?? '',
        this.contactNumber.value ?? '',
        this.propertyOwnerName.value ?? '',
        this.securityAlarmCheck.checked ?? false,
        this.poolMaintenance.checked ?? false);

    for (Luxury booking in this.bookingList) {
      if (booking.bookingID == item.bookingID) {
        booking = item;
        this.clear(e);
        this.displayArea.value = booking.toString();
        return;
      }
    }
    this.bookingList.add(item);
    this.clear(e);
    this.displayArea.value = this.bookingList.last.toString();
  }

  void search(Event e) {
    String output = 'Booking ID not found!';
    for (Luxury booking in this.bookingList) {
      if (booking.bookingID == this.bookingID.value) {
        output = booking.toString();
      }
    }
    clear(e);
    displayArea.value = output;
  }

  void update(Event e) {
    for (Luxury booking in this.bookingList) {
      if (booking.bookingID == this.bookingID.value) {
        this.submit(e);
      }
    }
  }

  void remove(Event e) {
    for (Luxury booking in this.bookingList) {
      if (booking.bookingID == this.bookingID.value) {
        this.bookingList.remove(booking);
      }
    }
  }

  void clear(Event e) {
    this.bookingID.value = (this.bookingList.length + 1).toString();
    this.gardenArea.value = '';
    this.numberOfWeeks.value = '';
    this.rooms.value = '';
    this.address.value = '';
    this.bookingDate.value = '';
    this.contactNumber.value = '';
    this.propertyOwnerName.value = '';
    this.securityAlarmCheck.checked = false;
    this.poolMaintenance.checked = false;
    this.displayArea.value = '';
  }

  void save(Event e) => UnimplementedError;
}
