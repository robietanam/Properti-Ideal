import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'src/appview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('id_ID');

  runApp(const AppView());
}
