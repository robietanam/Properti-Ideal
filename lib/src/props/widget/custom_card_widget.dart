import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../theme/textfont.dart';

class CardRumah1 extends StatelessWidget {
  const CardRumah1({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.sp)), //or 15.0
        child: Stack(
          children: [
            Image.asset(
              'assets/images/noimage2.png',
              fit: BoxFit.cover,
              width: 40.w,
              height: 25.w,
            ),
            Container(
              width: 40.w,
              height: 25.w,
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.sp)),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Color.fromARGB(139, 0, 0, 0),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.sp),
                child: TextDeskripsi2(text: title),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardRumah2 extends StatelessWidget {
  const CardRumah2({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.sp),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.sp)), //or 15.0
              child: Image.asset(
                'assets/images/noimage2.png',
                fit: BoxFit.cover,
                width: 20.w,
                height: 25.w,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 2.w),
              width: 20.w,
              child: TextDeskripsi3(text: title),
            )
          ],
        ),
      ),
    );
  }
}

class CardRumah3 extends StatelessWidget {
  const CardRumah3({
    super.key,
    required this.dataRumah,
  });

  final Map<String, dynamic> dataRumah;

  String numberToRp(int num) {
    final theNum = num ~/ pow(10, 6);

    return 'Rp. ' + theNum.toString() + ' Juta';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.sp),
        ),
        color: Color(0xFFEAF3FF),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15.sp)), //or 15.0
              child: Image.asset(
                'assets/images/noimage2.png',
                fit: BoxFit.cover,
                width: 25.w,
                height: 25.w,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 5.w),
              width: 60.w,
              height: 0.675.dp,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextDeskripsi2(
                    text: dataRumah['judul'],
                    color: Colors.black,
                  ),
                  TextDeskripsi1(
                    text: numberToRp(
                      dataRumah['harga'],
                    ),
                    color: Color(0xFF117BF0),
                  ),
                  SizedBox(
                    width: 30.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextJudul2(
                                text: dataRumah['kamarTidur'].toString()),
                            Icon(Icons.bed, size: 18.sp),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextJudul2(
                                text: dataRumah['kamarMandi'].toString()),
                            Icon(Icons.bathtub_outlined, size: 18.sp),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextJudul2(text: dataRumah['garasi'].toString()),
                            Icon(Icons.garage, size: 18.sp),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
