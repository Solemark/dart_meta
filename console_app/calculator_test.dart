import 'package:test/test.dart';
import 'calculator.dart';

List<List<double>> getData() => [
      [5.5, 5.5],
      [5.5, -5.5],
      [-5.5, -5.5]
    ];

void main() {
  List<List<double>> data = getData();
  double result = 0;
  group('test calculator', () {
    test('addition', () {
      for (var row in data) {
        result = row[0] + row[1];
        expect(result, addition(row[0], row[1]));
      }
    });

    test('subtraction', () {
      for (var row in data) {
        result = row[0] - row[1];
        expect(result, subtraction(row[0], row[1]));
      }
    });

    test('multiplication', () {
      for (var row in data) {
        result = row[0] * row[1];
        expect(result, multiplication(row[0], row[1]));
      }
    });

    test('division', () {
      for (var row in data) {
        result = row[0] / row[1];
        expect(result, division(row[0], row[1]));
      }
    });
  });
}
