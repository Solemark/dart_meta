import '../data/Booking.dart';
import 'BookingGUI.dart';

class CreateGUI {
  BookingGUI run(BookingGUI gui) {
    Luxury item = new Luxury(
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

    gui.bookingList.add(item);
    gui.bookings.clear(gui);
    gui.displayArea.value = gui.bookingList.last.toString();
    return gui;
  }
}
