import 'package:flutter/material.dart';
import 'package:properti_ideal/pages/login.dart';
import 'package:properti_ideal/pages/register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FarmBase',
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
