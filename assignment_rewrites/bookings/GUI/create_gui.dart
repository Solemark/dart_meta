import '../data/booking.dart';
import 'gui.dart';

class CreateGUI extends GUI {
  CreateGUI() {
    _run();
  }

  void _run() {
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
        this.bookings.clear();
        this.displayArea.value = booking.toString();
        return;
      }
    }
    this.bookingList.add(item);
    this.bookings.clear();
    this.displayArea.value = this.bookingList.last.toString();
  }
}
