import 'dart:math';

extension NumExtention on num {
  /// Calculate the circumference of a circle with the given [radius].
  ///
  /// ```dart
  /// print(2.329.calculateCircumference) -> 31.41592653589793
  /// print(5.calculateCircumference) -> 31.41592653589793
  /// ```
  ///
  num get calculateCircumference => 2 * pi * this;

  /// Calculate the area of a circle with the given [radius].
  ///
  /// ```dart
  /// print(2.329.calculateCircularArea) -> 78.53981633974483s
  /// print(5.calculateCircularArea) -> 78.53981633974483s
  /// ```
  ///
  num get calculateCircularArea => pi * (this * this);

  /// Calculate the diameter of a circle with the given [radius].
  ///
  /// ```dart
  /// print(2.329.calculateCircleDiameter) -> 10.0
  /// print(5.calculateCircleDiameter) -> 10
  /// ```
  ///
  num get calculateCircleDiameter => 2 * this;
}
