import 'package:test/test.dart';

import 'reverse_array.dart';

(List<int>, List<int>) getData() =>
    ([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]);

void main() {
  var (data, result) = getData();
  test('Reverse Array', () => expect(result, reverseArray(data)));
  test('Reverse Same Array', () => expect(result, reverseSameArray(data)));
}
