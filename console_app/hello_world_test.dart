import 'package:test/test.dart';
import 'hello_world.dart';

void main() {
  test('Test hello world', () {
    expect('Hello World!', greet());
  });
}
