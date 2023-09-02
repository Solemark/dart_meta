import 'booking.dart';

class ListBookingCLI {
  String listBookings(List<Luxury> bookingList) {
    String output = '';
    for (Luxury item in bookingList) {
      output = '$output\n${item.toString()}';
    }
    return output;
  }
}
