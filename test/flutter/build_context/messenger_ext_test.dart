import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ext_pack/src/flutter/build_context/messenger_ext.dart';

void main() {
  testWidgets('scaffoldMessenger and showSnackBar work', (tester) async {
    late BuildContext ctx;
    await tester.pumpWidget(MaterialApp(
      home: Builder(
        builder: (context) {
          ctx = context;
          return Scaffold(body: Container());
        },
      ),
    ));
    final messenger = ctx.scaffoldMessenger;
    expect(messenger, isA<ScaffoldMessengerState>());
    final snackBar = SnackBar(content: Text('test'));
    expect(() => ctx.showSnackBar(snackBar), returnsNormally);
  });
}
