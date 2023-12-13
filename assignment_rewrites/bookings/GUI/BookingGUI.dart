import 'dart:html';
import 'GUI.dart';

class BookingGUI extends GUI {
  BookingGUI() {
    //this.bookings.load();
    this.bookingID.value = (this.bookingList.length + 1).toString();
    this.clearButton.onClick.listen(this.clear);
    this.submitButton.onClick.listen(this.create);
    this.searchButton.onClick.listen(this.search);
    //this.updateButton.onClick.listen(this.update);
    //this.removeButton.onClick.listen(this.remove);
    //this.saveButton.onClick.listen(this.save);
  }

  void clear(Event e) => this.bookings.clear(this);
  void create(Event e) => this.bookings.create(this);
  void search(Event e) => this.bookings.search(this);
  //void remove(Event e) => this.bookings.remove();
  //void update(Event e) => this.bookings.update();
  //void save(Event e) => this.bookings.save();
}
