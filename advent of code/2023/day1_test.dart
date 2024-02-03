import 'package:test/test.dart';
import 'day1.dart';

void main() {
  test(
      "Test Day 1",
      () => expect(
          142,
          day1([
            "1abc2", // 12
            "pqr3stu8vwx", // 38
            "a1b2c3d4e5f", // 15
            "treb7uchet", // 77
          ])));
}
