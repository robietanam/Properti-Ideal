import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../props/widget/custom_card_widget.dart';
import '../../props/widget/custom_search.dart';
import '../../props/widget/rekomendasi_widget.dart';
import '../auth/login.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final searchController = TextEditingController();

  final dataNamaRumah = [
    'Rumah abadil',
    'Rumah dekat sekolah ',
    'Rumah idaman',
    'Rumah antik',
    'Rumah mewah'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.2.dp),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        width: 10.w,
                        child: Image.asset(
                          'assets/images/app-icon.png',
                        ),
                      ),
                      CustomSearchField(
                        searchController: searchController,
                        width: 80,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.sp),
                  height: 51.w,
                  child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: dataNamaRumah.length,
                      itemBuilder: (BuildContext context, int index) => Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                            child: CardRumah2(title: dataNamaRumah[index]),
                          )),
                ),
                RekomendasiWidget(dataNamaRumah: dataNamaRumah),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
