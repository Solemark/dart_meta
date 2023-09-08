import 'dart:html';
import 'gui.dart';

class BookingGUI extends GUI {
  BookingGUI() {
    this.bookings.load();
    this.bookingID.value = (this.bookingList.length + 1).toString();
    this.submitButton.onClick.listen(this.create);
    this.searchButton.onClick.listen(this.search);
    this.updateButton.onClick.listen(this.update);
    this.removeButton.onClick.listen(this.remove);
    this.clearButton.onClick.listen(this.clear);
    this.saveButton.onClick.listen(this.save);
  }

  void clear(Event e) => this.bookings.clear();
  void create(Event e) => this.bookings.create();
  void remove(Event e) => this.bookings.remove();
  void search(Event e) => this.bookings.search();
  void update(Event e) => this.bookings.update();
  void save(Event e) => this.bookings.save();
}
