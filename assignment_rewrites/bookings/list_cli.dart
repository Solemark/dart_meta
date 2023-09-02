import 'booking.dart';

class ListCLI {
  String listBookings(List<Luxury> bookingList) {
    String output = '';
    for (Luxury item in bookingList) {
      output = '$output\n${item.toString()}';
    }
    return output;
  }
}
