/// Null-safe [double] properties
extension SafeDoubleExt on double? {
  double get zeroIfNull => this ?? 0.0;
}
