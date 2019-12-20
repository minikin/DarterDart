import 'dart:math';

extension DoubleExtention on double {
  /// Calculate the circumference of a circle with the given [radius].
  ///
  /// ```dart
  /// print(5.0.calculateCircumference) -> 31.41592653589793
  /// ```
  ///
  double get calculateCircumference => 2 * pi * this;

  /// Calculate the area of a circle with the given [radius].
  ///
  /// ```dart
  /// print(5.0.calculateCircularArea) -> 78.53981633974483s
  /// ```
  ///
  double get calculateCircularArea => pi * (this * this);

  /// Calculate the diameter of a circle with the given [radius].
  ///
  /// ```dart
  /// print(calculateCircleDiameter(5)) -> 10.0
  /// ```
  ///
  double get calculateCircleDiameter => 2 * this;

  /// Calculate the area of a square or rectangle with length [a] and/or length[b].
  ///
  /// ```dart
  /// print(2.0.calculateSquareArea()) -> 4.0
  /// print(2.0.calculateSquareArea(b: 4.6)) -> 9.2
  /// ```
  ///
  double calculateSquareArea({double b}) => b == null ? this * this : this * b;

  /// Rounds the give double [value] to the given [decimals].
  ///
  /// ```dart
  /// print(round(5,2832883723, 2)) -> 20
  /// ```
  ///
  double rounded(int decimals) =>
      (this * pow(10, decimals)).round() / pow(10, decimals);
}
