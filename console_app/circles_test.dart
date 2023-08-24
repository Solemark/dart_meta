import 'package:test/test.dart';
import 'circles.dart';

List<List<double>> getData() => [
      [-5, 0, 5], //Input
      [0, 0, 78.53981633974483], //area results
      [0, 0, 31.41592653589793] //circumference results
    ];

void main() {
  List<List<double>> data = getData();
  group('test circles', () {
    test('area', () {
      for (int i = 0; i < data[0].length; i++) {
        expect(data[1][i], getArea(data[0][i]));
      }
    });

    test('circumference', () {
      for (int i = 0; i < data[0].length; i++) {
        expect(data[2][i], getCircumference(data[0][i]));
      }
    });
  });
}
