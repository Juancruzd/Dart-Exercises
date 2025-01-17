import 'package:diferencia_de_cuadrados/diferencia_de_cuadrados.dart';
import 'package:test/test.dart';

final differenceOfSquares = DifferenceOfSquares();

void main() {
  group('DifferenceOfSquares', () {
    group('Square the sum of the numbers up to the given number', () {
      test('square of sum 1', () {
        final int result = differenceOfSquares.squareOfSum(1);
        expect(result, equals(1));
      }, skip: false);

      test('square of sum 5', () {
        final int result = differenceOfSquares.squareOfSum(5);
        expect(result, equals(225));
      }, skip: false);

      test('square of sum 100', () {
        final int result = differenceOfSquares.squareOfSum(100);
        expect(result, equals(25502500));
      }, skip: false);
    });

    group('Sum the squares of the numbers up to the given number', () {
      test('sum of squares 1', () {
        final int result = differenceOfSquares.sumOfSquares(1);
        expect(result, equals(1));
      }, skip: false);

      test('sum of squares 5', () {
        final int result = differenceOfSquares.sumOfSquares(5);
        expect(result, equals(55));
      }, skip: false);

      test('sum of squares 100', () {
        final int result = differenceOfSquares.sumOfSquares(100);
        expect(result, equals(338350));
      }, skip: false);
    });

    group('Subtract sum of squares from square of sums', () {
      test('difference of squares 1', () {
        final int result = differenceOfSquares.differenceOfSquares(1);
        expect(result, equals(0));
      }, skip: false);

      test('difference of squares 5', () {
        final int result = differenceOfSquares.differenceOfSquares(5);
        expect(result, equals(170));
      }, skip: false);

      test('difference of squares 100', () {
        final int result = differenceOfSquares.differenceOfSquares(100);
        expect(result, equals(25164150));
      }, skip: false);
    });
  });
}
