import '../data/booking.dart';
import 'gui.dart';

class SearchGUI extends GUI {
  SearchGUI() {
    _run();
  }

  void _run() {
    String output = 'Booking ID not found!';
    for (Luxury booking in this.bookingList) {
      if (booking.bookingID == this.bookingID.value) {
        output = booking.toString();
      }
    }
    this.bookings.clear();
    displayArea.value = output;
  }
}
