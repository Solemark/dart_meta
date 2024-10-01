import 'package:web/web.dart';
import 'Bookings.dart';
import 'GUI.dart';

class BookingGUI extends GUI {
  final Bookings bookings = new Bookings();
  BookingGUI() {
    this.bookingID.value = (this.bookingList.length + 1).toString();
    this.clearButton.onClick.listen((e) => this.clear(e));
    this.submitButton.onClick.listen((e) => this.create(e));
    this.searchButton.onClick.listen((e) => this.search(e));
    this.updateButton.onClick.listen((e) => this.update(e));
    this.removeButton.onClick.listen((e) => this.remove(e));
  }

  void clear(MouseEvent e) => this.bookings.clear(this);
  void create(MouseEvent e) => this.bookings.create(this);
  void search(MouseEvent e) => this.bookings.search(this);
  void update(MouseEvent e) => this.bookings.update(this);
  void remove(MouseEvent e) => this.bookings.remove(this);
}
