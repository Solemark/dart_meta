import '../data/Booking.dart';
import 'BookingGUI.dart';

class SearchGUI {
  BookingGUI run(BookingGUI gui) {
    Luxury? result = null;
    for (Luxury booking in gui.bookingList) {
      if (booking.bookingID == gui.bookingID.value) {
        result = booking;
      }
    }
    if (result != null) {
      gui.gardenArea.value = result.gardenArea.toString();
      gui.numberOfWeeks.value = result.numberOfWeeks.toString();
      gui.rooms.value = result.rooms.toString();
      gui.address.value = result.address;
      gui.bookingDate.value = result.bookingDate;
      gui.contactNumber.value = result.contactNumber;
      gui.propertyOwnerName.value = result.propertyOwnerName;
      gui.securityAlarmCheck.checked = result.securityAlarmCheck;
      gui.poolMaintenance.checked = result.poolMaintenance;
      gui.displayArea.value = result.toString();
    } else {
      gui.bookings.clear(gui);
      gui.displayArea.value = 'Booking ID not found!';
    }
    return gui;
  }
}
