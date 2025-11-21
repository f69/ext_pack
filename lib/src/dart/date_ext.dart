import 'int_ext.dart';

extension DateExt on DateTime {
  /// Get only date part of [DateTime] (zero time).
  DateTime get date => DateTime(year, month, day);

  /// Get today date only (zero time).
  DateTime get today => DateTime.now().date;

  /// Get string for only date part of [DateTime] (no time) in ISO 8601 format.
  String get isoDateString => toIso8601String().substring(0, 10);

  /// Is given [DateTime] is the same date as other.
  bool isSameDate(DateTime other) => date == other.date;

  /// Is given [DateTime] is in the same month as other.
  bool isSameMonth(DateTime other) =>
      year == other.year && month == other.month;

  /// Is given [DateTime] is in the same year as other.
  bool isSameYear(DateTime other) => year == other.year;

  /// Check if given [DateTime] is between two dates.
  bool isBetween(DateTime begin, DateTime end) =>
      !isBefore(begin) && !isAfter(end);

  /// Adds [Duration] to [DateTime].
  ///
  /// Example:
  /// ```dart
  /// return DateTime.now() + 3.days;
  /// ```
  DateTime operator +(Duration duration) => add(duration);

  /// Subtracts [Duration] from [DateTime].
  DateTime operator -(Duration duration) => subtract(duration);

  /// Is given [DateTime] is today.
  bool get isToday => isSameDate(DateTime.now());

  /// Is given [DateTime] is yesterday.
  bool get isYesterday => (this + 1.days).isToday;
}
