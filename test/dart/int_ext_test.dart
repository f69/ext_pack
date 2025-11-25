import 'package:flutter_test/flutter_test.dart';
import 'package:ext_pack/src/dart/int_ext.dart';

void main() {
  group('IntDurationExt', () {
    test('days returns correct Duration', () {
      expect(5.days, Duration(days: 5));
    });
    test('hours returns correct Duration', () {
      expect(3.hours, Duration(hours: 3));
    });
    test('minutes returns correct Duration', () {
      expect(7.minutes, Duration(minutes: 7));
    });
    test('seconds returns correct Duration', () {
      expect(10.seconds, Duration(seconds: 10));
    });
    test('ms returns correct Duration', () {
      expect(150.ms, Duration(milliseconds: 150));
    });
  });
}
