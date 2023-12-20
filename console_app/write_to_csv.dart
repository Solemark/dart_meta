import 'dart:io';
import 'package:csv/csv.dart';

Future<void> writeToCSV(String filename, List<List<String>> data) async =>
    await File('$filename').writeAsString(ListToCsvConverter().convert(data));

Future<void> destroyFile(String filename) async => await File('$filename').delete();
