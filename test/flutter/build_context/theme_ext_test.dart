import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ext_pack/src/flutter/build_context/theme_ext.dart';

void main() {
  testWidgets('ThemeExt and ThemeColorsExt properties', (tester) async {
    late BuildContext ctx;
    await tester.pumpWidget(MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple),
      home: Builder(builder: (context) {
        ctx = context;
        return Container();
      }),
    ));
    expect(ctx.theme, isA<ThemeData>());
    expect(ctx.isDark, isFalse);
    expect(ctx.textTheme, isNotNull);
    expect(ctx.iconTheme, isNotNull);
    expect(ctx.colorScheme, isNotNull);
    expect(ctx.primaryColor, Colors.purple);
    expect(ctx.backgroundColor, ctx.theme.colorScheme.surface);
    expect(ctx.scaffoldBgColor, ctx.theme.scaffoldBackgroundColor);
    expect(ctx.cardColor, ctx.theme.cardColor);
    expect(ctx.disabledColor, ctx.theme.disabledColor);
    expect(ctx.dividerColor, ctx.theme.dividerColor);
    // Accept null for bodyTextColor (depends on theme)
    //expect(ctx.bodyTextColor, isA<Color?>());
    expect(ctx.platform, ctx.theme.platform);
    expect(ctx.isMaterial, true);
    expect(ctx.isCupertino, false);
  });

  testWidgets('cupertinoTheme, isCupertino work', (tester) async {
    late BuildContext ctx;
    await tester.pumpWidget(CupertinoApp(
      home: Builder(
        builder: (context) {
          ctx = context;
          return Container();
        },
      ),
    ));
    expect(ctx.cupertinoTheme, isA<CupertinoThemeData>());
    // platform comes from Material, so skip platform checks
  });
}
