import '../data/Booking.dart';
import 'BookingGUI.dart';

class CreateGUI {
  BookingGUI run(BookingGUI gui) {
    Luxury item = new Luxury(
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

    gui.bookingList.add(item);
    gui.bookings.clear(gui);
    gui.displayArea.value = gui.bookingList.last.toString();
    return gui;
  }
}
