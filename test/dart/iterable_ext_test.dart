import 'package:ext_pack/src/dart/iterable_ext.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NullIterableExt', () {
    test('Null iterable is blank', () {
      Iterable<int>? i;
      expect(i.isBlank, isTrue);
      expect(i.isNotBlank, isFalse);
    });

    test('Empty iterable is blank', () {
      final i = <int>[];
      expect(i.isBlank, isTrue);
      expect(i.isNotBlank, isFalse);
    });

    test('Non empty list is not blank', () {
      final i = [1, 2, 3];
      expect(i.isBlank, isFalse);
      expect(i.isNotBlank, isTrue);
    });
  });
}
