import 'package:flutter_test/flutter_test.dart';
import 'package:ext_pack/src/dart/string_ext.dart';

void main() {
  group('NullStringExt', () {
    test('null string is blank', () {
      String? s;
      expect(s.isBlank, isTrue);
      expect(s.isNotBlank, isFalse);
    });
    test('empty string is blank', () {
      String? s = '';
      expect(s.isBlank, isTrue);
      expect(s.isNotBlank, isFalse);
    });
    test('non-empty string is not blank', () {
      String? s = 'abc';
      expect(s.isBlank, isFalse);
      expect(s.isNotBlank, isTrue);
    });
  });
  group('StringExt', () {
    test('isUrl works', () {
      expect('http://test.com'.isUrl, isTrue);
      expect('https://test.com'.isUrl, isTrue);
      expect('ftp://test.com'.isUrl, isFalse);
      expect('test.com'.isUrl, isFalse);
    });
    test('capitalize works', () {
      expect(''.capitalize(), '');
      expect('a'.capitalize(), 'A');
      expect('abc'.capitalize(), 'Abc');
      expect('Abc'.capitalize(), 'Abc');
    });
    test('capitalizeAllFirst works', () {
      expect('hello world'.capitalizeAllFirst(), 'Hello World');
      expect('MULTI word TEST'.capitalizeAllFirst(), 'Multi Word Test');
    });
    test('toInt and toDouble work', () {
      expect('123'.toInt(), 123);
      expect('12.5'.toInt(), null);
      expect('abc'.toInt(), null);
      expect('123.4'.toDouble(), 123.4);
      expect('abc'.toDouble(), null);
    });
  });
}
