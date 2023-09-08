import 'gui.dart';

class ClearGUI extends GUI {
  ClearGUI() {
    _run();
  }

  void _run() {
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
}
