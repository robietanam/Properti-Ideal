import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:properti_ideal/src/props/theme/textfont.dart';
import 'package:properti_ideal/src/view/auth/login.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../props/theme/paint.dart';
import '../../props/widget/avatar.dart';

class AkunView extends StatefulWidget {
  const AkunView({super.key});

  @override
  State<AkunView> createState() => _AkunViewState();
}

class _AkunViewState extends State<AkunView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: const TargetPainter(),
        child: SafeArea(
          child: Container(
              width: 100.w,
              padding: EdgeInsets.all(10.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.55.dp, bottom: 0.3.dp),
                    child: AvatarIcon(),
                  ),
                  const TextJudul2(
                    text: 'Muhammad Robitul Anam',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.3.dp),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 0.2.dp, horizontal: 2.w),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).primaryColor),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.sp))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.favorite_outline,
                                  color: Theme.of(context).primaryColor,
                                  size: 27.5.sp,
                                ),
                                TextIconDeskripsi(
                                  text: 'WISHLIST',
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            height: 0.5.dp,
                            width: 0.05.dp,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.chat_outlined,
                                  color: Theme.of(context).primaryColor,
                                  size: 27.5.sp,
                                ),
                                TextIconDeskripsi(
                                  text: 'CHAT',
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.black,
                            height: 0.5.dp,
                            width: 0.05.dp,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Icon(
                                  Icons.wallet,
                                  color: Theme.of(context).primaryColor,
                                  size: 27.5.sp,
                                ),
                                TextIconDeskripsi(
                                  text: 'CICILAN KPR',
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 80.w,
                    child: Column(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.calculate_outlined),
                              Padding(
                                padding: EdgeInsets.only(left: 1.w),
                                child: Text('Kalkulator KPR'),
                              ),
                            ],
                          ),
                        ),
                        Divider(height: 0.1.dp),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.ads_click_outlined),
                              Padding(
                                padding: EdgeInsets.only(left: 1.w),
                                child: Text('Pasang Iklan'),
                              ),
                            ],
                          ),
                        ),
                        Divider(height: 0.1.dp),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.discount_outlined),
                              Padding(
                                padding: EdgeInsets.only(left: 1.w),
                                child: Text('Voucher Diskon'),
                              ),
                            ],
                          ),
                        ),
                        Divider(height: 0.1.dp),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: LoginScreen(),
                              withNavBar: false,
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Row(
                            children: [
                              Icon(Icons.exit_to_app),
                              Padding(
                                padding: EdgeInsets.only(left: 1.w),
                                child: Text('Keluar'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
