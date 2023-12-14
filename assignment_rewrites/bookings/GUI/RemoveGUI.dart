import 'BookingGUI.dart';

class RemoveGUI {
  BookingGUI run(BookingGUI gui) {
    gui.bookingList.removeWhere((item) => item.bookingID == gui.bookingID.value);
    return gui;
  }
}
