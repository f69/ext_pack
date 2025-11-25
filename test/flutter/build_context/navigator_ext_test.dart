import 'package:ext_pack/src/flutter/build_context/navigator_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('basic navigation work', (tester) async {
    late BuildContext ctx;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            ctx = context;
            return Scaffold(body: Container());
          },
        ),
      ),
    );
    expect(ctx.navigator, isA<NavigatorState>());
    expect(ctx.canPop(), isFalse);
    expect(ctx.push(MaterialPageRoute(builder: (_) => Container())), completes);
    expect(() => ctx.pop(), returnsNormally);
    expect(ctx.pushMaterial((_) => Container()), completes);
    expect(() => ctx.popUntil((route) => true), returnsNormally);
    expect(ctx.pushPlatform((_) => Container()), completes);
    expect(
      ctx.pushReplacement(MaterialPageRoute(builder: (_) => Container())),
      completes,
    );
    expect(ctx.pushReplacementMaterial((_) => Container()), completes);
    // pushNamed etc. require actual route config, so just check existence
    expect(ctx.pushNamed('/'), isA<Future>());

    // workaround to prevent test hang
    expect(() => ctx.pop(), returnsNormally);
    expect(() => ctx.pop(), returnsNormally);
    expect(() => ctx.pop(), returnsNormally);
  });

  testWidgets(
    'cupertino navigation work',
    (tester) async {
      late BuildContext ctx;
      await tester.pumpWidget(
        CupertinoApp(
          home: Builder(
            builder: (context) {
              ctx = context;
              return Container();
            },
          ),
        ),
      );
      expect(ctx.pushPlatform((_) => Container()), completes);
      expect(() => ctx.pop(), returnsNormally);
    },
    variant: TargetPlatformVariant.only(TargetPlatform.iOS),
  );
}
