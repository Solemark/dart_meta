import '../data/Booking.dart';
import 'ListCLI.dart';
import 'NewCLI.dart';
import 'RemoveCLI.dart';
import 'SearchCLI.dart';
import 'UpdateCLI.dart';

class Bookings {
  Luxury create() => NewCLI().create();
  String search(List<Luxury> bookingList) => SearchCLI().search(bookingList);
  String list(List<Luxury> bookingList) => ListCLI().list(bookingList);
  List<Luxury> update(List<Luxury> bookingList) =>
      UpdateCLI().update(bookingList);
  List<Luxury> remove(List<Luxury> bookingList) =>
      RemoveCLI().remove(bookingList);
}
