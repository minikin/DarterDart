import 'package:test/test.dart';

import 'package:darty/darty.dart';

void main() {
  group('String Extensions', () {
    test('Test reversed', () {
      expect(''.reversed, '');
      expect('apple'.reversed, 'elppa');
      expect('apple🍏'.reversed, '🍏elppa');
    });

    test('Test withPrefix()', () {
      expect('www.example.com'.withPrefix(''), 'www.example.com');
      expect(
          'www.example.com'.withPrefix('https://'), 'https://www.example.com');
    });

    test('Test wordCount', () {
      expect(''.wordCount, 0);
      expect(', . ` ? / @ ! & *% #'.wordCount, 0);
      expect('The sun in Berlin'.wordCount, 4);
    });

    test('Test replacingOccurrences()', () {
      expect(
          '''How much wood would a woodchuck chuck if a woodchuck would chuck wood?'''
              .replacingOccurrences('would', 'should'),
          '''How much wood should a woodchuck chuck if a woodchuck should chuck wood?''');
    });

    test('Test chars', () {
      expect('apple1969'.chars, ['a', 'p', 'p', 'l', 'e', '1', '9', '6', '9']);
      expect('😀€∭ФЙ1J'.chars, ['😀', '€', '∭', 'Ф', 'Й', '1', 'J']);
    });

    test('Test capitalize()', () {
      expect(''.capitalize(), '');
      expect('12345'.capitalize(), '12345');
      expect('a'.capitalize(), 'A');
      expect('Apple'.capitalize(), 'Apple');
      expect('Apple'.capitalize(), 'Apple');
      expect('APPLE'.capitalize(), 'APPLE');
    });

    test('Test decapitalize()', () {
      expect(''.decapitalize(), '');
      expect('12345'.decapitalize(), '12345');
      expect('A'.decapitalize(), 'a');
      expect('Apple'.decapitalize(), 'apple');
      expect('apple'.decapitalize(), 'apple');
    });

    test('Test isValidEmail', () {
      expect('test@test.com'.isValidEmail, true);
      expect('apple'.isValidEmail, false);
    });

    test('Test replaceCharacters', () {
      expect('1234567890'.replaceCharacters(), '*****67890');
      expect('1234567890'.replaceCharacters(begin: 3, end: 8), '123*****90');
      expect('1234567890'.replaceCharacters(end: 4, replaceChar: '#'),
          '####567890');
    });

    test('Test replaceCharacters', () {
      expect('1234567890'.chunk(chunkSize: 2), ['12', '34', '56', '78', '90']);
    });

    test('Test addCharAtPosition', () {
      expect('1234567890'.addCharAtPosition('-', 5), '12345-67890');
      expect('1234567890'.addCharAtPosition('-', 3, repeat: true),
          '123-456-789-0');
    });
  });
}
