import 'dart:html';
import 'Bookings.dart';
import 'GUI.dart';

class BookingGUI extends GUI {
  Bookings bookings = new Bookings();
  BookingGUI() {
    this.bookingID.value = (this.bookingList.length + 1).toString();
    this.clearButton.onClick.listen(this.clear);
    this.submitButton.onClick.listen(this.create);
    this.searchButton.onClick.listen(this.search);
    this.updateButton.onClick.listen(this.update);
    this.removeButton.onClick.listen(this.remove);
  }

  void clear(Event e) => this.bookings.clear(this);
  void create(Event e) => this.bookings.create(this);
  void search(Event e) => this.bookings.search(this);
  void update(Event e) => this.bookings.update(this);
  void remove(Event e) => this.bookings.remove(this);
}
