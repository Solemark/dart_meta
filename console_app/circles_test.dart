import 'package:test/test.dart';
import 'circles.dart';

void main() {
  const List<List<double>> data = [
    [-5, 0, 5], //Input
    [0, 0, 78.53981633974483], //area results
    [0, 0, 31.41592653589793] //circumference results
  ];
  group('test circles', () {
    test('area', () {
      for (int i = 0; i < data[0].length; i++) {
        expect(data[1][i], Circles(data[0][i]).area);
      }
    });

    test('circumference', () {
      for (int i = 0; i < data[0].length; i++) {
        expect(data[2][i], Circles(data[0][i]).circumference);
      }
    });
  });
}
