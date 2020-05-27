import 'package:hola_mundo/hola_mundo.dart';
import 'package:test/test.dart';

void main() {
  test('Say Hi!', () {
    expect(HelloWorld().hello(), equals('Hello, World!'));
  });
}
