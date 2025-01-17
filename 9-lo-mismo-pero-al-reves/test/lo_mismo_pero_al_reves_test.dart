import 'package:lo_mismo_pero_al_reves/lo_mismo_pero_al_reves.dart';
import 'package:test/test.dart';

void main() {
  group('ReverseString', () {
    test('an empty string', () {
      final String result = reverse('');
      expect(result, equals(''));
    }, skip: false);

    test('a word', () {
      final String result = reverse('robot');
      expect(result, equals('tobor'));
    }, skip: false);

    test('a capitalized word', () {
      final String result = reverse('Ramen');
      expect(result, equals('nemaR'));
    }, skip: false);

    test('a sentence with punctuation', () {
      final String result = reverse('I\'m hungry!');
      expect(result, equals('!yrgnuh m\'I'));
    }, skip: false);

    test('a palindrome', () {
      final String result = reverse('racecar');
      expect(result, equals('racecar'));
    }, skip: false);

    test('an even-sized word', () {
      final String result = reverse('drawer');
      expect(result, equals('reward'));
    }, skip: false);
  });
}
