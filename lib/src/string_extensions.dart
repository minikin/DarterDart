import 'package:characters/characters.dart';

extension StringExtention on String {
  /// Reverse a string.
  ///
  /// ```dart
  /// print('Apple'.reversed) // elppa
  /// ```
  ///
  String get reversed {
    final charRange = Characters(this).iteratorAtEnd;
    final buffer = StringBuffer();

    while (charRange.moveBack()) {
      buffer.write(charRange.current);
    }

    return buffer.toString();
  }

  /// Adding a prefix to a string
  ///
  /// ```dart
  /// final url = 'www.example.com';
  /// final fullURL = url.withPrefix('https://');
  /// print(fullURL);
  /// prints: https://www.example.com
  /// ```
  ///
  String withPrefix(String prefix) {
    if (startsWith(prefix)) {
      return this;
    }
    return '$prefix$this';
  }

  /// Counting words in a string
  ///
  /// ```dart
  /// final phrase = 'The sun in Berlin';
  /// print('Words count: ${phrase.wordCount}');
  /// prints: 4
  /// ```
  ///
  int get wordCount => RegExp(r'(\w+)').allMatches(this).length;

  /// Replacing a search term in String
  ///
  /// ```dart
  /// final phrase =
  /// 'How much wood would a woodchuck chuck if a woodchuck would chuck wood?';
  /// print(phrase.replacingOccurrences('would', 'should'));
  /// prints:
  /// How much wood should a woodchuck chuck if a woodchuck should chuck wood?
  /// ```
  ///
  String replacingOccurrences(String search, String replacement) =>
      replaceAll(RegExp('$search'), replacement);

  /// Returns characters of a string.
  ///
  /// ```dart
  /// print('apple'.chars // Apple
  /// ```
  ///
  Iterable<String> get chars => Characters(this);

  /// Capitalize a string
  ///
  /// ```dart
  /// print('apple'.capitalize()) // Apple
  /// print('APPLE'.capitalize()) // Apple
  /// print('Apple'.capitalize()) // Apple
  /// ```
  ///
  String capitalize() {
    switch (length) {
      case 0:
        return this;
      case 1:
        return toUpperCase();
      default:
        return substring(0, 1).toUpperCase() + substring(1);
    }
  }

  /// Decapitalize a string
  ///
  /// ```dart
  /// print('Apple'.decapitalize()) // apple
  /// print('APPLE'.decapitalize()) // apple
  /// print('apple'.decapitalize()) // apple
  /// ```
  ///
  String decapitalize() {
    switch (length) {
      case 0:
        return this;
      case 1:
        return toLowerCase();
      default:
        return substring(0, 1).toLowerCase() + substring(1);
    }
  }
}
