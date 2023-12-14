import '../data/Booking.dart';
import 'NewCLI.dart';
import 'RemoveCLI.dart';
import 'SearchCLI.dart';
import 'UpdateCLI.dart';

class Bookings {
  Luxury create() => NewCLI().create();
  void search(List<Luxury> bookingList) => SearchCLI().search(bookingList);
  List<Luxury> update(List<Luxury> bookingList) => UpdateCLI().update(bookingList);
  List<Luxury> remove(List<Luxury> bookingList) => RemoveCLI().remove(bookingList);
}
