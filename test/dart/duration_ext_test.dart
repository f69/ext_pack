import 'package:flutter_test/flutter_test.dart';
import 'package:ext_pack/src/dart/duration_ext.dart';

dynamic _result;

void main() {
  group('DurationExt', () {
    test('delay delays execution', () async {
      final watch = Stopwatch()..start();
      await const Duration(milliseconds: 200).delay();
      watch.stop();
      expect(watch.elapsedMilliseconds, greaterThanOrEqualTo(190));
    });
    test('delay executes computation', () async {
      _result = null;
      await const Duration(milliseconds: 10).delay(() async {
        _result = 42;
      });
      expect(_result, 42);
    });
  });
}
