import 'package:test/test.dart';
import 'day1.dart';

void main() {
  const Iterable<String> data = [
    "1000",
    "2000",
    "3000",
    "",
    "4000",
    "",
    "5000",
    "6000",
    "",
    "7000",
    "8000",
    "9000",
    "",
    "10000",
  ];

  test('test day 1', () {
    expect(4, day1(data, []));
  });
}
