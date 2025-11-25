import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ext_pack/src/flutter/build_context/media_query_ext.dart';

void main() {
  testWidgets('MediaQueryExt provides mediaQuery properties', (tester) async {
    late BuildContext context;
    await tester.pumpWidget(
      Builder(
        builder: (ctx) {
          context = ctx;
          return const MaterialApp(home: Placeholder());
        },
      ),
    );
    final mq = context.mediaQuery;
    expect(mq, isA<MediaQueryData>());
    expect(context.screenSize, mq.size);
    expect(context.padding, mq.padding);
    expect(context.platformBrightness, mq.platformBrightness);
    expect(context.orientation, mq.orientation);
    expect(context.isLandscape, mq.orientation == Orientation.landscape);
    expect(context.screenShortestSide, mq.size.shortestSide);
  });
}
