import '../data/booking.dart';
import 'gui.dart';

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
