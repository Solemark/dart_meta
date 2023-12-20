import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:test/test.dart';
import 'csv.dart';

(String, List<List<String>>) constructor() => (
      'test.csv',
      [
        ['Header 1', 'Header 2', 'Header 3'],
        ['Data 1-1', 'Data 2-1', 'Data 3-1'],
        ['Data 1-2', 'Data 2-2', 'Data 3-2']
      ]
    );

Future<void> destructor(CSV csv) async => await csv.destroy;

void main() {
  CSV? csv = null;

  setUp(() async {
    var (filename, data) = constructor();
    csv = new CSV(filename, data);
    await csv!.write;
  });

  tearDown(() async {
    await destructor(csv!);
  });

  group('Test Write to CSV', () {
    test('Test Filename Exists', () async => expect(true, await File('${csv!.filename}').exists()));
    test(
        'Test File Has Data',
        () async => expect(
            csv!.data,
            await File('${csv!.filename}')
                .openRead()
                .transform(utf8.decoder)
                .transform(CsvToListConverter())
                .toList()));
  });
}
