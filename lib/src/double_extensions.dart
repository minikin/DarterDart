import 'dart:math';

extension DoubleExtention on double {
  /// Rounds the give double [value] to the given [decimals].
  ///
  /// ```dart
  /// print(round(5,2832883723, 2)) -> 20
  /// ```
  ///
  double rounded(int decimals) =>
      (this * pow(10, decimals)).round() / pow(10, decimals);
}
