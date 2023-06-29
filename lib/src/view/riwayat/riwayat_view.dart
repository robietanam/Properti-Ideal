import 'dart:math';

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:properti_ideal/src/props/theme/textfont.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../props/widget/custom_card_widget.dart';
import '../../props/widget/custom_search.dart';
import '../../props/widget/rekomendasi_widget.dart';
import '../auth/login.dart';

class RiwayatView extends StatefulWidget {
  const RiwayatView({super.key});

  @override
  State<RiwayatView> createState() => _RiwayatViewState();
}

class _RiwayatViewState extends State<RiwayatView> {
  final searchController = TextEditingController();

  final List<Map<String, dynamic>> dataRumah = [
    {
      'judul':
          'Best Deal Rumah Pik Golf Island Uk 6x15, 2lt Siap Huni Best Lokasi At Pantai Indah Kapuk Jakut',
      'harga': 690000000,
      'kamarMandi': 2,
      'kamarTidur': 3,
      'garasi': 1,
      'mainImage': null,
      'images': [],
    },
    {
      'judul':
          'Best Deal Rumah Pik Golf Island Uk 6x15, 2lt Siap Huni Best Lokasi At Pantai Indah Kapuk Jakut',
      'harga': 690000000,
      'kamarMandi': 2,
      'kamarTidur': 3,
      'garasi': 1,
      'mainImage': null,
      'images': [],
    },
    {
      'judul':
          'Best Deal Rumah Pik Golf Island Uk 6x15, 2lt Siap Huni Best Lokasi At Pantai Indah Kapuk Jakut',
      'harga': 690000000,
      'kamarMandi': 2,
      'kamarTidur': 3,
      'garasi': 1,
      'mainImage': null,
      'images': [],
    },
    {
      'judul':
          'Best Deal Rumah Pik Golf Island Uk 6x15, 2lt Siap Huni Best Lokasi At Pantai Indah Kapuk Jakut',
      'harga': 690 * pow(10, 6),
      'kamarMandi': 2,
      'kamarTidur': 3,
      'garasi': 1,
      'mainImage': null,
      'images': [],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0.3.dp),
                  child: TextJudul2(text: 'Riwayat'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.3.dp),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: dataRumah.length,
                      itemBuilder: (BuildContext context, int index) => Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.5.w, vertical: 0.15.dp),
                            child: CardRumah3(dataRumah: dataRumah[index]),
                          )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
