import 'dart:math';

extension NumExtention on num {
  /// Calculate the circumference of a circle with the given [radius].
  ///
  /// ```dart
  /// print(2.329.calculateCircumference) -> 14.633538580421257
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
  /// print(2.329.calculateCircleDiameter) -> 4.658
  /// print(5.calculateCircleDiameter) -> 10
  /// ```
  ///
  num get calculateCircleDiameter => 2 * this;

  /// Calculate the area of a square or rectangle with length [a] and/or length[b].
  ///
  /// ```dart
  /// print(2.329.calculateSquareArea()) -> 5.424241000000001
  /// print(2.329.calculateSquareArea(b: 4.6)) -> 10.7134
  /// print(2.calculateSquareArea()) -> 4
  /// print(2.calculateSquareArea(b: 4.6)) -> 9.2
  /// ```
  ///
  num calculateSquareArea({num b}) => b == null ? this * this : this * b;
}
