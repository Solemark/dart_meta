import 'BookingGUI.dart';
import 'ClearGUI.dart';
import 'CreateGUI.dart';
import 'SearchGUI.dart';
import 'RemoveGUI.dart';
import 'FileGUI.dart';
import 'UpdateGUI.dart';

class Bookings {
  BookingGUI clear(BookingGUI gui) => ClearGUI().run(gui);
  BookingGUI create(BookingGUI gui) => CreateGUI().run(gui);
  BookingGUI search(BookingGUI gui) => SearchGUI().run(gui);
  //void list() => ListGUI();
  //void remove() => RemoveGUI();
  //void update() => UpdateGUI();
  //void save() => FileGUI();
  //void load() => FileGUI().load();
}
