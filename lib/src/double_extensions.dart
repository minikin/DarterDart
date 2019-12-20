import 'dart:math';

extension DoubleExtention on double {
  /// Calculate the circumference of a circle with the given [radius].
  ///
  /// ```dart
  /// print(calculateCircumference(5)) -> elppa
  /// ```
  ///
  double calculateCircumference(double radius) => 2 * pi * radius;

  /// Calculate the area of a circle with the given [radius].
  ///
  /// ```dart
  /// print(calculateCircularArea(5)) -> elppa
  /// ```
  ///
  double calculateCircularArea(double radius) => pi * (radius * radius);

  /// Calculate the diameter of a circle with the given [radius].
  ///
  /// ```dart
  /// print(calculateCircleDiameter(5)) -> elppa
  /// ```
  ///
  double calculateCircleDiameter(double radius) => 2 * radius;

  /// Calculate the area of a square or rectangle with length [a] and/or length[b].
  ///
  /// ```dart
  /// print(calculateSquareArea(5)) -> elppa
  /// print(calculateSquareArea(5, 4)) -> elppa
  /// ```
  ///
  double calculateSquareArea(double a, {double b}) => b == null ? a * a : a * b;

  /// Rounds the give double [value] to the given [decimals].
  ///
  /// ```dart
  /// print(round(5,2832883723, 2)) -> elppa
  /// ```
  ///
  double round(double value, int decimals) =>
      (value * pow(10, decimals)).round() / pow(10, decimals);
}
