import 'package:test/test.dart';
import 'day2.dart';

void main() {
  const List<List<String>> data = [
    ["A", "Y"],
    ["B", "X"],
    ["C", "Z"]
  ];

  test('test day 2', () {
    expect(15, day2(data));
  });
}
