import 'package:test/test.dart';

import 'package:darty/darty.dart';

void main() {
  group('Bool Extensions', () {
    test('Test toInteger', () {
      expect(true.toInteger, 1);
      expect(false.toInteger, 0);
    });

    test('Test toggle', () {
      expect(true.toggle(), false);
      expect(false.toggle(), true);
    });
  });
}
