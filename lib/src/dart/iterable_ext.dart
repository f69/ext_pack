/// Nullable iterables helper
extension NullIterableExt<T> on Iterable<T>? {
  /// Whether this iterable is null or empty
  bool get isBlank => this == null || this!.isEmpty;

  /// Whether this iterable is not empty
  bool get isNotBlank => !isBlank;

  /// The number of elements in this [Iterable], or 0 if it is null
  int get safeLength => this == null ? 0 : this!.length;
}
