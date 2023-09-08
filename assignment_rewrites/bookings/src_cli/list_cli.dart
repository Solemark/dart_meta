import '../data/booking.dart';

class ListCLI {
  String list(List<Luxury> bookingList) {
    String output = '';
    for (Luxury item in bookingList) {
      output = '$output\n${item.toString()}';
    }
    return output;
  }
}
