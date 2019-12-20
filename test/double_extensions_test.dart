import 'package:test/test.dart';

import 'package:darty/darty.dart';

void main() {
  group('Double Extensions', () {
    test('Test calculateCircumference', () {
      expect(5.0.calculateCircumference, 31.41592653589793);
    });

    test('Test calculateCircularArea', () {
      expect(5.0.calculateCircularArea, 78.53981633974483);
    });

    test('Test calculateCircleDiameter', () {
      expect(5.0.calculateCircleDiameter, 10.0);
    });

    test('Test calculateSquareArea', () {
      expect(2.0.calculateSquareArea(), 4.0);
      expect(2.0.calculateSquareArea(b: 4.6), 9.2);
    });

    test('Test round', () {
      expect(5.2832883723.rounded(2), 5.28);
      expect(5.2832883723.rounded(4), 5.2833);
      expect(5.2832883723.rounded(7), 5.2832884);
    });
  });
}
