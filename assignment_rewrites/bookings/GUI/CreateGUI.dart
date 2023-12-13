import '../data/Booking.dart';
import 'BookingGUI.dart';

class CreateGUI {
  BookingGUI run(BookingGUI gui) {
    Luxury item = new Luxury(
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

    gui.bookingList.add(item);
    gui.bookings.clear(gui);
    gui.displayArea.value = gui.bookingList.last.toString();
    return gui;
  }
}
