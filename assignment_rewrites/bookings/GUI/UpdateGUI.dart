import 'BookingGUI.dart';
import '../data/Booking.dart';

class UpdateGUI {
  BookingGUI run(BookingGUI gui) {
    for (Luxury booking in gui.bookingList) {
      if (booking.bookingID == gui.bookingID.value) {
        gui.bookingList[int.parse(booking.bookingID) - 1] = new Luxury(
            gardenArea: int.parse(gui.gardenArea.value ?? '0'),
            numberOfWeeks: int.parse(gui.numberOfWeeks.value ?? '0'),
            rooms: int.parse(gui.rooms.value ?? '0'),
            address: gui.address.value ?? '',
            bookingDate: gui.bookingDate.value ?? '',
            bookingID: gui.bookingID.value ?? '',
            contactNumber: gui.contactNumber.value ?? '',
            propertyOwnerName: gui.propertyOwnerName.value ?? '',
            securityAlarmCheck: gui.securityAlarmCheck.checked ?? false,
            poolMaintenance: gui.poolMaintenance.checked ?? false);
      }
    }
    return gui;
  }
}
