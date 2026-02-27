import 'dart:async';

/// [Duration] utility functions
extension DurationExt on Duration {
  /// Delays [Future] for this [Duration].
  /// Can be more useful with [Duration] shorthands for int.
  ///
  /// Example:
  /// ```dart
  /// await 2.seconds.delay();
  /// ```
  Future<T> delay<T>([FutureOr<T> Function()? computation]) =>
      Future.delayed(this, computation);
}

extension DurationUtilExt on Duration? {
  bool get isZero => this == Duration.zero;

  bool get isZeroOrNull => this == null || this == Duration.zero;
}
