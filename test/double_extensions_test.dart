import 'package:test/test.dart';

import 'package:darty/darty.dart';

void main() {
  group('Double Extensions', () {
    test('Test round', () {
      expect(5.2832883723.rounded(2), 5.28);
      expect(5.2832883723.rounded(4), 5.2833);
      expect(5.2832883723.rounded(7), 5.2832884);
    });
  });
}
