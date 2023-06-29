import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../theme/textfont.dart';
import 'custom_card_widget.dart';

class RekomendasiWidget extends StatelessWidget {
  const RekomendasiWidget({
    super.key,
    required this.dataNamaRumah,
  });

  final List<String> dataNamaRumah;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextJudul2(
              text: 'Rekomendasi untukmu',
            ),
            Container(
              color: Colors.black,
              height: 5.sp,
              width: 30.w,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.sp),
          height: 40.w,
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: dataNamaRumah.length,
              itemBuilder: (BuildContext context, int index) =>
                  CardRumah1(title: dataNamaRumah[index])),
        ),
      ],
    );
  }
}
