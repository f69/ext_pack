import 'package:material_ui/material_ui.dart';
import 'package:ext_pack/ext_pack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ext_pack example',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.inversePrimary,
        title: Text('Ext_pack example'),
      ),
      body: Center(
        child: Text(
          (DateTime.now() + 3.days).isoDateString,
          style: context.textTheme.headlineMedium,
        ),
      ),
    );
  }
}
