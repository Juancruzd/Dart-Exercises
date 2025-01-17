import 'package:scrabble/scrabble.dart';
import 'package:test/test.dart';

void main() {
  group('ScrabbleScore', () {
    test('lowercase letter', () {
      final int result = score('a');
      expect(result, equals(1));
    }, skip: false);

    test('uppercase letter', () {
      final int result = score('A');
      expect(result, equals(1));
    }, skip: false);

    test('valuable letter', () {
      final int result = score('f');
      expect(result, equals(4));
    }, skip: false);

    test('short word', () {
      final int result = score('at');
      expect(result, equals(2));
    }, skip: false);

    test('short, valuable word', () {
      final int result = score('zoo');
      expect(result, equals(12));
    }, skip: false);

    test('medium word', () {
      final int result = score('street');
      expect(result, equals(6));
    }, skip: false);

    test('medium, valuable word', () {
      final int result = score('quirky');
      expect(result, equals(22));
    }, skip: false);

    test('long, mixed-case word', () {
      final int result = score('OxyphenButazone');
      expect(result, equals(41));
    }, skip: false);

    test('english-like word', () {
      final int result = score('pinata');
      expect(result, equals(8));
    }, skip: false);

    test('empty input', () {
      final int result = score('');
      expect(result, equals(0));
    }, skip: false);

    test('entire alphabet available', () {
      final int result = score('abcdefghijklmnopqrstuvwxyz');
      expect(result, equals(87));
    }, skip: false);
  });
}
