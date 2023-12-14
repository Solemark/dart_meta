import 'BookingGUI.dart';
import 'ClearGUI.dart';
import 'CreateGUI.dart';
import 'SearchGUI.dart';
import 'RemoveGUI.dart';
import 'UpdateGUI.dart';

class Bookings {
  BookingGUI clear(BookingGUI gui) => ClearGUI().run(gui);
  BookingGUI create(BookingGUI gui) => CreateGUI().run(gui);
  BookingGUI search(BookingGUI gui) => SearchGUI().run(gui);
  BookingGUI update(BookingGUI gui) => UpdateGUI().run(gui);
  BookingGUI remove(BookingGUI gui) => RemoveGUI().run(gui);
}
