import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import '../data/Booking.dart';
import 'GUI.dart';

class FileGUI extends GUI {
  FileGUI() {
    _run();
  }

  Future<void> _run() async {
    try {
      await File('bookings.csv').writeAsString(
          ListToCsvConverter().convert(this.bookingList.cast<List?>()));
    } catch (e) {
      print('Error! Failed to save file bookings.csv\n${e}');
    }
  }

  void load() async {
    try {
      this.bookingList = (await File('bookings.csv')
              .openRead()
              .transform(utf8.decoder)
              .transform(CsvToListConverter())
              .toList())
          .cast<Luxury>();
    } catch (e) {
      print('Error! Unable to load file bookings.csv\n${e}');
    }
  }
}
