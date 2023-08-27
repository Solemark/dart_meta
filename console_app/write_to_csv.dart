import 'dart:io';
import 'package:csv/csv.dart';

void writeToCSV(String filename, List<List<String>> data) async {
  String csv = ListToCsvConverter().convert(data);
  File file = await File('$filename');
  file.writeAsString(csv);
}
