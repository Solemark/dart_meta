import 'BookingGUI.dart';

class ClearGUI {
  BookingGUI run(BookingGUI gui) {
    gui.bookingID.value = (gui.bookingList.length + 1).toString();
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
