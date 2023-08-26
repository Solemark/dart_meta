import 'package:test/test.dart';

import 'palindrome.dart';

(List<String>, List<bool>) getData() => (['DAD', 'Dad'], [true, false]);

void main() {
  test('Check if string is palindrome', () {
    var (data, result) = getData();
    for (int i = 0; i < data.length - 1; i++) {
      expect(result[i], checkPalindrome(data[i]));
    }
  });
}
