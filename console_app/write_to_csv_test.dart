import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:test/test.dart';

import 'write_to_csv.dart';

(String, List<List<String>>) constructor() => (
      'test.csv',
      [
        ['Header 1', 'Header 2', 'Header 3'],
        ['Data 1-1', 'Data 2-1', 'Data 3-1'],
        ['Data 1-2', 'Data 2-2', 'Data 3-2']
      ]
    );

Future<void> destructor(String filename) async => await destroyFile(filename);

void main() {
  String filename = '';
  List<List<String>> data = [];
  setUp(() async {
    (filename, data) = constructor();
    await writeToCSV(filename, data);
  });
  tearDown(() async {
    await destructor(filename);
    filename = '';
    data = [];
  });

  group('Test Write to CSV', () {
    test('Test Filename Exists', () async {
      bool result = await File('$filename').exists();
      expect(true, result);
    });

    test('Test File Has Data', () async {
      var csv = await File('$filename')
          .openRead()
          .transform(utf8.decoder)
          .transform(CsvToListConverter())
          .toList();
      expect(data, csv);
    });
  });
}
