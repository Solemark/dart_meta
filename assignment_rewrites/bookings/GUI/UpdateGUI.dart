import 'BookingGUI.dart';
import '../data/Booking.dart';

class UpdateGUI {
  BookingGUI run(BookingGUI gui) {
    int index = gui.bookingList.indexWhere((item) => item.bookingID == gui.bookingID.value);
    if (index != -1) {
      gui.bookingList[index] = new Luxury(
        gardenArea: int.parse(gui.gardenArea.value),
        numberOfWeeks: int.parse(gui.numberOfWeeks.value),
        rooms: int.parse(gui.rooms.value),
        address: gui.address.value,
        bookingDate: gui.bookingDate.value,
        bookingID: gui.bookingID.value,
        contactNumber: gui.contactNumber.value,
        propertyOwnerName: gui.propertyOwnerName.value,
        securityAlarmCheck: gui.securityAlarmCheck.checked,
        poolMaintenance: gui.poolMaintenance.checked,
      );
    }
    return gui;
  }
}
