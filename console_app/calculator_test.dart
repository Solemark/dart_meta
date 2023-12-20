import 'package:test/test.dart';
import 'calculator.dart';

void main() {
  const List<List<double>> data = [
    [5.5, 5.5],
    [5.5, -5.5],
    [-5.5, -5.5],
  ];
  double result = 0;
  group('test calculator', () {
    test('addition', () {
      for (var row in data) {
        result = row[0] + row[1];
        expect(result, Calculator(row[0], row[1]).add);
      }
    });

    test('subtraction', () {
      for (var row in data) {
        result = row[0] - row[1];
        expect(result, Calculator(row[0], row[1]).subtract);
      }
    });

    test('multiplication', () {
      for (var row in data) {
        result = row[0] * row[1];
        expect(result, Calculator(row[0], row[1]).multiply);
      }
    });

    test('division', () {
      for (var row in data) {
        result = row[0] / row[1];
        expect(result, Calculator(row[0], row[1]).divide);
      }
    });
  });
}
