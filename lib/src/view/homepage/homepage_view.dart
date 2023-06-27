import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../props/theme/textfont.dart';

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
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.sp),
                          ),
                          width: 67.5.w,
                          child: TextField(
                            controller: searchController,
                            cursorColor: Theme.of(context).primaryColor,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                hintText: "Cari Rumah Impianmu...",
                                hintStyle: TextStyle(fontSize: 15.sp),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Theme.of(context).primaryColor,
                                ),
                                suffixIconConstraints: const BoxConstraints(
                                  minWidth: 40,
                                  minHeight: 40,
                                ),
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 4.w),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(20.sp),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(20.sp),
                                )),
                          ),
                        ),
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
                          CardRumah(title: dataNamaRumah[index])),
                ),
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
                          CardRumah(title: dataNamaRumah[index])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardRumah extends StatelessWidget {
  const CardRumah({super.key, required this.title});

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
