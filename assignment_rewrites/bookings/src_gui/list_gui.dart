import '../data/booking.dart';
import 'gui.dart';

class ListGUI extends GUI {
  ListGUI() {
    _run();
  }

  void _run() {
    String output = '';
    for (Luxury item in this.bookingList) {
      output = '${output}\n${item.toString()}';
    }
    this.displayArea.value = output;
  }
}
