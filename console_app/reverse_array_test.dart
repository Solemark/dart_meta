import 'package:test/test.dart';
import 'reverse_array.dart';

void main() {
  List<int> input = [];
  List<int> result = [];
  setUp(() {
    input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    result = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
  });

  group('Test Reverse', () {
    test('New Array', () => expect(result, Reverse(input).newArray));
    test('Same Array', () => expect(result, Reverse(input).sameArray));
  });
}
