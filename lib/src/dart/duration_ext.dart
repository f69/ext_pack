import 'dart:async';

/// [Duration] utility functions
extension DurationExt on Duration {
  /// Get [Future] delayed for specified [Duration].
  /// Can be useful with [Duration] shorthands for int.
  ///
  /// Example:
  /// ```dart
  /// await 1.seconds.delay();
  /// ```
  Future<T> delay<T>([FutureOr<T> Function()? computation]) =>
      Future.delayed(this, computation);
}
