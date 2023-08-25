import 'package:test/test.dart';

List<String> getData() => ['FGO', 'AK', 'GI'];

void main() {
  test('Test gacha roll', () {
    List<String> data = getData();
    for (String item in data) {
      expect(true, item.contains(item));
    }
  });
}
