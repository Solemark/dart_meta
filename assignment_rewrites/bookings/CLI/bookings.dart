import '../data/booking.dart';
import 'list_cli.dart';
import 'new_cli.dart';
import 'remove_cli.dart';
import 'search_cli.dart';
import 'update_cli.dart';

class Bookings {
  Luxury create() => NewCLI().create();
  String search(List<Luxury> bookingList) => SearchCLI().search(bookingList);
  String list(List<Luxury> bookingList) => ListCLI().list(bookingList);
  List<Luxury> update(List<Luxury> bookingList) => UpdateCLI().update(bookingList);
  List<Luxury> remove(List<Luxury> bookingList) => RemoveCLI().remove(bookingList);
}
