import 'package:flutter/material.dart';

class Splash1 extends StatelessWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'images/logo.png',
              height: 75,
              width: 75,
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/splash1.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Temukan Properti Idaman',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Jelajahi properti sesuai dengan selera dan budgetmu!',
                    style: TextStyle(fontSize: 10),
                    textAlign:
                        TextAlign.center, // Menyimpan teks menjadi rata tengah
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi saat tombol pertama ditekan
                },
                child: const Text('Mulai Baru'),
              ),
            ),
            const SizedBox(height: 2),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: OutlinedButton(
                onPressed: () {
                  // Aksi saat tombol kedua ditekan
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue), // Ubah warna garis tepi
                ),
                child: const Text('Masuk ke Akun'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
