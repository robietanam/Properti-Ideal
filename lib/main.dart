import 'package:flutter/material.dart';
import 'package:properti_ideal/Splashscreen.dart';
import 'package:properti_ideal/splash1.dart';
import 'package:properti_ideal/splash2.dart';
import 'package:properti_ideal/splash3.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Tambahkan properti ini
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Halaman Utama',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Splash3()),
                );
              },
              child: const Text('Menuju Splash Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
