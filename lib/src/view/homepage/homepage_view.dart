import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../props/theme/textfont.dart';
import '../../props/widget/custom_card_widget.dart';
import '../../props/widget/custom_search.dart';
import '../../props/widget/rekomendasi_widget.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({super.key});

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  final searchController = TextEditingController();

  final dataNamaRumah = [
    'Rumah abadi',
    'Rumah dekat sekolah',
    'Rumah idaman',
    'Rumah antik',
    'Rumah mewah'
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.sp),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        width: 10.w,
                        child: Image.asset(
                          'assets/images/app-icon.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: CustomSearchField(
                            searchController: searchController),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.sp),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Column(
                            children: [
                              Icon(Icons.bookmark),
                              TextIconDeskripsi(
                                text: 'Wishlist',
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/image_1.png'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 17.w,
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Color.fromARGB(255, 196, 219, 250)),
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/svg/icon_kpr.svg'),
                              TextIconDeskripsi(
                                text: 'KPR',
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 17.w,
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Color.fromARGB(255, 196, 219, 250)),
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/svg/icon_compare.svg'),
                              TextIconDeskripsi(
                                text: 'Compare',
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 17.w,
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Color.fromARGB(255, 196, 219, 250)),
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/svg/icon_voucher.svg'),
                              TextIconDeskripsi(
                                text: 'Voucher',
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 17.w,
                          padding: EdgeInsets.all(3.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.sp),
                              color: Color.fromARGB(255, 196, 219, 250)),
                          child: Column(
                            children: [
                              SvgPicture.asset('assets/svg/icon_disekitar.svg'),
                              TextIconDeskripsi(
                                text: 'Disekitar',
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/image_2.png'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: true ? Colors.amber : Colors.amber[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.sp))),
                          padding: EdgeInsets.symmetric(
                              vertical: 13.sp, horizontal: 20.sp),
                          child: TextDeskripsi1(text: 'Rumah'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: false ? Colors.amber : Color(0xFFFFEEC9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.sp))),
                          padding: EdgeInsets.symmetric(
                              vertical: 13.sp, horizontal: 20.sp),
                          child: TextDeskripsi1(text: 'Tanah'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: false ? Colors.amber : Color(0xFFFFEEC9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.sp))),
                          padding: EdgeInsets.symmetric(
                              vertical: 13.sp, horizontal: 20.sp),
                          child: TextDeskripsi1(text: 'Toko'),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: true ? Colors.amber : Colors.amber[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.sp))),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.sp, horizontal: 10.sp),
                          child: Icon(Icons.list),
                        ),
                      ),
                    ],
                  ),
                ),
                RekomendasiWidget(dataNamaRumah: dataNamaRumah),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextJudul2(
                      text: 'Promo',
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
            ),
          ),
        ),
      ),
    );
  }
}
