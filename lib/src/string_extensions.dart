import 'package:characters/characters.dart';

extension StringExtention on String {
  /// Returns characters of a string.
  Iterable<String> get chars => Characters(this);

  /// Capitalize the given string
  ///
  /// Example :
  ///
  /// ```dart
  /// print('apple'.capitalize()) // Apple
  /// print('APPLE'.capitalize()) // Apple
  /// print('Apple'.capitalize()) // Apple
  /// ```
  ///
  String capitalize() =>
      this.substring(0, 1).toUpperCase() + this.substring(1).toLowerCase();

  /// Decapitalize the given string
  ///
  /// Example :
  ///
  /// ```dart
  /// print('Apple'.decapitalize()) // apple
  /// print('APPLE'.decapitalize()) // apple
  /// print('apple'.decapitalize()) // apple
  /// ```
  ///
  String decapitalize() => substring(0, 1).toLowerCase() + substring(1);

  /// Returns a new string with characters in reversed order.
  String get reversed => this.split('').reversed.join();

  /// Adding a prefix to a string
  ///
  /// ```dart
  /// final url = 'www.example.com';
  /// final fullURL = url.withPrefix('https://');
  /// print(fullURL);
  /// prints: https://www.example.com
  /// ```
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
  int get wordCount {
    final regex = RegExp(r'(\w+)');
    return regex.allMatches(this).length;
  }

  /// Replacing a search term in String
  ///
  /// ```dart
  /// final phrase =
  /// 'How much wood would a woodchuck chuck if a woodchuck would chuck wood?';
  /// print(phrase.replacingOccurrences('would', 'should'));
  /// prints:
  /// How much wood should a woodchuck chuck if a woodchuck should chuck wood?
  /// ```
  String replacingOccurrences(
    String search,
    String replacement,
  ) {
    return replaceAll(RegExp('$search'), replacement);
  }
}
