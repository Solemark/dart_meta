import '../data/Booking.dart';
import 'BookingGUI.dart';

class RemoveGUI {
  BookingGUI run(BookingGUI gui) {
    for (Luxury booking in gui.bookingList) {
      if (booking.bookingID == gui.bookingID.value) {
        gui.bookingList.remove(booking);
      }
    }
    return gui;
  }
}
