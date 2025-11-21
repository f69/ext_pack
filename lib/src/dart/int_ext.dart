/// Shorthands to get one-component [Duration] from int value
extension IntDurationExt on int {
  /// Get [Duration] in specified days
  Duration get days => Duration(days: this);

  /// Get [Duration] in specified hours
  Duration get hours => Duration(hours: this);

  /// Get [Duration] in specified minutes
  Duration get minutes => Duration(minutes: this);

  /// Get [Duration] in specified seconds
  Duration get seconds => Duration(seconds: this);

  /// Get [Duration] in specified milliseconds
  Duration get ms => Duration(milliseconds: this);
}
