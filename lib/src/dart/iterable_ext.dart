/// Nullable iterables helper
extension NullIterableExt<T> on Iterable<T>? {
  /// Checks if iterable is null or empty
  bool get isBlank => this == null || this!.isEmpty;

  /// Checks if iterable is not empty
  bool get isNotBlank => !isBlank;
}
