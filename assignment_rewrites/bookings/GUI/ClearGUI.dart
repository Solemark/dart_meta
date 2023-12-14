import 'BookingGUI.dart';

class ClearGUI {
  BookingGUI run(BookingGUI gui) {
    int newID = 1;
    if (gui.bookingList.isNotEmpty) {
      newID = int.parse(gui.bookingList.last.bookingID) + 1;
    }
    gui.bookingID.value = newID.toString();
    gui.gardenArea.value = '';
    gui.numberOfWeeks.value = '';
    gui.rooms.value = '';
    gui.address.value = '';
    gui.bookingDate.value = '';
    gui.contactNumber.value = '';
    gui.propertyOwnerName.value = '';
    gui.securityAlarmCheck.checked = false;
    gui.poolMaintenance.checked = false;
    gui.displayArea.value = '';
    return gui;
  }
}
