import 'package:numero_armstrong/numero_armstrong.dart';
import 'package:test/test.dart';

final armstrongNumbers = ArmstrongNumbers();

void main() {
  group('ArmstrongNumbers', () {
    test('Zero is an Armstrong number', () {
      final bool result = armstrongNumbers.isArmstrongNumber(0);
      expect(result, equals(true));
    }, skip: false);

    test('Single digit numbers are Armstrong numbers', () {
      final bool result = armstrongNumbers.isArmstrongNumber(5);
      expect(result, equals(true));
    }, skip: false);

    test('There are no 2 digit Armstrong numbers', () {
      final bool result = armstrongNumbers.isArmstrongNumber(10);
      expect(result, equals(false));
    }, skip: false);

    test('Three digit number that is an Armstrong number', () {
      final bool result = armstrongNumbers.isArmstrongNumber(153);
      expect(result, equals(true));
    }, skip: false);

    test('Three digit number that is not an Armstrong number', () {
      final bool result = armstrongNumbers.isArmstrongNumber(100);
      expect(result, equals(false));
    }, skip: false);

    test('Four digit number that is an Armstrong number', () {
      final bool result = armstrongNumbers.isArmstrongNumber(9474);
      expect(result, equals(true));
    }, skip: false);

    test('Four digit number that is not an Armstrong number', () {
      final bool result = armstrongNumbers.isArmstrongNumber(9475);
      expect(result, equals(false));
    }, skip: false);

    test('Seven digit number that is an Armstrong number', () {
      final bool result = armstrongNumbers.isArmstrongNumber(9926315);
      expect(result, equals(true));
    }, skip: false);

    test('Seven digit number that is not an Armstrong number', () {
      final bool result = armstrongNumbers.isArmstrongNumber(9926314);
      expect(result, equals(false));
    }, skip: false);
  });
}
