import 'package:test/test.dart';

import 'package:darty/darty.dart';

void main() {
  group('Num Extensions', () {
    test('Test calculateCircumference', () {
      expect(2.329.calculateCircumference, 14.633538580421257);
      expect(5.calculateCircumference, 31.41592653589793);
    });

    test('Test calculateCircularArea', () {
      expect(2.329.calculateCircularArea, 17.040755676900556);
      expect(5.calculateCircularArea, 78.53981633974483);
    });

    test('Test calculateCircleDiameter', () {
      expect(2.329.calculateCircleDiameter, 4.658);
      expect(5.calculateCircleDiameter, 10);
    });

    test('Test calculateSquareArea', () {
      expect(2.329.calculateSquareArea(), 5.424241000000001);
      expect(2.329.calculateSquareArea(b: 4.6), 10.7134);
      expect(2.calculateSquareArea(), 4);
      expect(2.calculateSquareArea(b: 4.6), 9.2);
    });
  });
}
