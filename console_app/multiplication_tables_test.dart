import 'package:test/test.dart';

import 'multiplication_tables.dart';

(List<List<String>>, List<int>) getData() => (
      [
        [
          '1 x 0 = 0',
          '1 x 1 = 1',
          '1 x 2 = 2',
          '1 x 3 = 3',
          '1 x 4 = 4',
          '1 x 5 = 5',
          '1 x 6 = 6',
          '1 x 7 = 7',
          '1 x 8 = 8',
          '1 x 9 = 9',
          '1 x 10 = 10',
          '1 x 11 = 11',
          '1 x 12 = 12'
        ],
        [
          '12 x 0 = 0',
          '12 x 1 = 12',
          '12 x 2 = 24',
          '12 x 3 = 36',
          '12 x 4 = 48',
          '12 x 5 = 60',
          '12 x 6 = 72',
          '12 x 7 = 84',
          '12 x 8 = 96',
          '12 x 9 = 108',
          '12 x 10 = 120',
          '12 x 11 = 132',
          '12 x 12 = 144'
        ]
      ],
      [1, 12]
    );

void main() {
  var (result, table) = getData();
  test('Test multiplication tables', () {
    int count = 0;
    for (var item in result) {
      expect(item, multiplicationTables(table[count], 12));
      count++;
    }
  });
}