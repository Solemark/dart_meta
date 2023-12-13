import '../data/Booking.dart';
import 'GUI.dart';

class RemoveGUI extends GUI {
  RemoveGUI() {
    _run();
  }

  void _run() {
    for (Luxury booking in this.bookingList) {
      if (booking.bookingID == this.bookingID.value) {
        this.bookingList.remove(booking);
      }
    }
  }
}
