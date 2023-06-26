import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'src/appview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id_ID');

  runApp(const AppView());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
