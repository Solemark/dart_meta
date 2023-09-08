import 'clear_gui.dart';
import 'create_gui.dart';
import 'list_gui.dart';
import 'remove_gui.dart';
import 'file_gui.dart';
import 'search_gui.dart';
import 'update_gui.dart';

class Bookings {
  void clear() => ClearGUI();
  void create() => CreateGUI();
  void list() => ListGUI();
  void remove() => RemoveGUI();
  void search() => SearchGUI();
  void update() => UpdateGUI();
  void save() => FileGUI();
  void load() => FileGUI().load();
}
