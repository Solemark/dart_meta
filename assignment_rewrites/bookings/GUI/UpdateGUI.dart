import 'BookingGUI.dart';
import '../data/Booking.dart';

class UpdateGUI {
  BookingGUI run(BookingGUI gui) {
    for (Luxury booking in gui.bookingList) {
      if (booking.bookingID == gui.bookingID.value) {
        gui.bookingList[int.parse(booking.bookingID) - 1] = new Luxury(
            int.parse(gui.gardenArea.value ?? '0'),
            int.parse(gui.numberOfWeeks.value ?? '0'),
            int.parse(gui.rooms.value ?? '0'),
            gui.address.value ?? '',
            gui.bookingDate.value ?? '',
            gui.bookingID.value ?? '',
            gui.contactNumber.value ?? '',
            gui.propertyOwnerName.value ?? '',
            gui.securityAlarmCheck.checked ?? false,
            gui.poolMaintenance.checked ?? false);
      }
    }
    return gui;
  }
}
