import 'package:test/test.dart';
import 'calculator.dart';

List<List<double>> getData() {
  return [
    [5.5, 5.5],
    [5.5, -5.5],
    [-5.5, -5.5]
  ];
}

void main() {
  group('test calculator', () {
    List<List<double>> data = getData();

    test('addition', () {
      for (var row in data) {
        double result = row[0] + row[1];
        expect(result, addition(row[0], row[1]));
      }
    });

    test('subtraction', () {
      for (var row in data) {
        double result = row[0] - row[1];
        expect(result, subtraction(row[0], row[1]));
      }
    });

    test('multiplication', () {
      for (var row in data) {
        double result = row[0] * row[1];
        expect(result, multiplication(row[0], row[1]));
      }
    });

    test('division', () {
      for (var row in data) {
        double result = row[0] / row[1];
        expect(result, division(row[0], row[1]));
      }
    });
  });
}
