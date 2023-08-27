import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:test/test.dart';

import 'write_to_csv.dart';

(String, List<List<String>>) constructor() {
  String filename = 'test.csv';
  List<List<String>> data = [
    ['Header 1', 'Header 2', 'Header 3'],
    ['Data 1-1', 'Data 2-1', 'Data 3-1'],
    ['Data 1-2', 'Data 2-2', 'Data 3-2']
  ];
  writeToCSV(filename, data);
  return (filename, data);
}

//TODO Delete doesnt work!
void destructor(String filename) => File('$filename').deleteSync();

void main() {
  var (filename, data) = constructor();
  group('Test Write to CSV', () {
    test('Test Filename Exists',
        () async => expect(true, await File('$filename').exists()));
    test('Test File Has Data', () async {
      var csv = await File('$filename')
          .openRead()
          .transform(utf8.decoder)
          .transform(CsvToListConverter())
          .toList();
      expect(data, csv);
    });
  });
  destructor(filename);
}
