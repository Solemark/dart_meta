import 'GUI.dart';
import '../data/Booking.dart';

class UpdateGUI extends GUI {
  UpdateGUI() {
    _run();
  }

  void _run() {
    for (Luxury booking in this.bookingList) {
      if (booking.bookingID == this.bookingID.value) {
        //this.bookings.create();
      }
    }
  }
}
