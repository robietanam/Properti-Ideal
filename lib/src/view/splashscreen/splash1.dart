import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../auth/login.dart';
import 'splash2.dart';

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
              'assets/images/splash/logo.png',
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
                    'assets/images/splash/splash1.png',
                    width: 50.w,
                    height: 50.w,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Temukan Properti Idaman',
                    style:
                        TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Jelajahi properti sesuai dengan selera dan budgetmu!',
                    style: TextStyle(fontSize: 14.sp),
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Splash2(),
                    ),
                  );
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue), // Ubah warna garis tepi
                ),
                child: const Text('Masuk ke Akun'),
              ),
            ),
            SizedBox(height: 20.sp),
          ],
        ),
      ),
    );
  }
}
