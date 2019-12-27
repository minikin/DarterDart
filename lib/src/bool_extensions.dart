extension BoolExtention on bool {
  /// Return 1 if true, or 0 if false
  ///
  /// ```dart
  /// print(false.toInteger); -> 0
  /// print(true.toInteger); -> 1
  /// ```
  ///
  int get toInteger => this ? 1 : 0;

  /// Toggle bool
  ///
  /// ```dart
  /// print(false.toggle()); -> true
  /// print(true.toggle()); -> false
  /// ```
  ///
  bool toggle() {
    var value = this;
    return value = !value;
  }
}
