import 'package:flutter/material.dart';
import 'package:properti_ideal/src/view/homepage/homepage_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../appview.dart';

class Splash3 extends StatelessWidget {
  const Splash3({Key? key}) : super(key: key);

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
                    'assets/images/splash/splash3.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Pesan jasa untuk perawatan properti',
                    style:
                        TextStyle(fontSize: 17.sp, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Mulai dari membersihkan rumah, AC, hingga mobil, dijamin puas!',
                    style: TextStyle(fontSize: 13.sp),
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
                      builder: (context) => RoutePage(),
                    ),
                  );
                },
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
