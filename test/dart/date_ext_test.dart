import 'package:flutter_test/flutter_test.dart';
import 'package:ext_pack/src/dart/date_ext.dart';
import 'package:ext_pack/src/dart/int_ext.dart';

void main() {
  group('DateExt', () {
    final date = DateTime(2020, 5, 10, 13, 24, 56); // 2020-05-10
    final otherSameDay = DateTime(2020, 5, 10, 1, 0, 0);
    final otherMonth = DateTime(2020, 5, 31);
    final otherYear = DateTime(2020, 1, 1);
    final outOfRange = DateTime(2021, 1, 1);

    test('date property returns zero-time date', () {
      expect(date.date, DateTime(2020, 5, 10));
    });
    test('isoDateString is correct', () {
      expect(date.isoDateString, '2020-05-10');
    });
    test('isSameDate true, false', () {
      expect(date.isSameDate(otherSameDay), true);
      expect(date.isSameDate(otherMonth), false);
    });
    test('isSameMonth true, false', () {
      expect(date.isSameMonth(otherSameDay), true);
      expect(date.isSameMonth(otherYear), false);
    });
    test('isSameYear true, false', () {
      expect(date.isSameYear(otherSameDay), true);
      expect(date.isSameYear(outOfRange), false);
    });
    test('isBetween', () {
      expect(date.isBetween(DateTime(2020, 1, 1), DateTime(2020, 12, 31)), true);
      expect(date.isBetween(DateTime(2019, 1, 1), DateTime(2020, 4, 1)), false);
    });
    test('operator + and -', () {
      expect(date + 2.days, DateTime(2020, 5, 12, 13, 24, 56));
      expect(date - 2.days, DateTime(2020, 5, 8, 13, 24, 56));
    });
    test('isToday/isYesterday works', () {
      final today = DateTime.now();
      final yesterday = today.subtract(const Duration(days: 1));
      expect(today.isToday, true);
      expect(yesterday.isYesterday, true);
    });
  });
}
