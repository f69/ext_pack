/// Null-safe [double] properties
extension SafeDoubleExt on double? {
  /// Returns zero if null
  double get zeroIfNull => this ?? 0.0;
}
