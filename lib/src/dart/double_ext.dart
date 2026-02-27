extension SafeDoubleExt on double? {
  double get zeroIfNull => this ?? 0.0;
}
