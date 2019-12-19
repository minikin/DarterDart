import 'package:test/test.dart';

import 'package:darty/darty.dart';

void main() {
  group('String Extensions', () {
    test('.reversed', () {
      expect(''.reversed, '');
      expect('apple'.reversed, 'elppa');
      expect('apple🍏'.reversed, '🍏elppa');
    });

    test('.withPrefix()', () {
      expect('www.example.com'.withPrefix(''), 'www.example.com');
      expect(
          'www.example.com'.withPrefix('https://'), 'https://www.example.com');
    });

    test('.wordCount', () {
      expect(''.wordCount, 0);
      expect(', . ` ? / @ ! & *% #'.wordCount, 0);
      expect('The sun in Berlin'.wordCount, 4);
    });

    test('.replacingOccurrences()', () {
      expect(
          '''How much wood would a woodchuck chuck if a woodchuck would chuck wood?'''
              .replacingOccurrences('would', 'should'),
          '''How much wood should a woodchuck chuck if a woodchuck should chuck wood?''');
    });

    test('.chars', () {
      expect('apple1969'.chars, ['a', 'p', 'p', 'l', 'e', '1', '9', '6', '9']);
      expect('😀€∭ФЙ1J'.chars, ['😀', '€', '∭', 'Ф', 'Й', '1', 'J']);
    });

    test('.capitalize()', () {
      expect(''.capitalize(), '');
      expect('12345'.capitalize(), '12345');
      expect('a'.capitalize(), 'A');
      expect('Apple'.capitalize(), 'Apple');
      expect('Apple'.capitalize(), 'Apple');
      expect('APPLE'.capitalize(), 'APPLE');
    });

    test('.decapitalize()', () {
      expect(''.decapitalize(), '');
      expect('12345'.decapitalize(), '12345');
      expect('A'.decapitalize(), 'a');
      expect('Apple'.decapitalize(), 'apple');
      expect('apple'.decapitalize(), 'apple');
    });
  });
}
