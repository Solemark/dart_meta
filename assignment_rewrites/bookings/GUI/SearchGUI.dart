import '../data/Booking.dart';
import 'BookingGUI.dart';

class SearchGUI {
  BookingGUI run(BookingGUI gui) {
    Luxury result = gui.bookingList.where((item) => item.bookingID == gui.bookingID.value).first;
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
    return gui;
  }
}
