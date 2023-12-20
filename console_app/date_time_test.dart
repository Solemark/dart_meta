import 'package:test/test.dart';
import 'date_time.dart';

void main() {
  test('Test current datetime', () {
    var day = DateTime.now().day;
    var month = DateTime.now().month;
    var year = DateTime.now().year;
    expect('$day/$month/$year', Datetime().current);
  });
}
