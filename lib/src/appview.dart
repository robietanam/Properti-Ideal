import 'dart:async';
import 'package:flutter/material.dart';

import 'props/theme/app_theme.dart';
import 'props/theme/textfont.dart';
import 'view/auth/login.dart';
import 'view/homepage/homepage_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'view/homepage/navbar.dart';
import 'view/splashscreen/splashscreen_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: SplashScreen(),
      );
    });
  }
}

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _routePageState();
}

class _routePageState extends State<RoutePage> {
  bool _isLoggedin = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (_isLoggedin) ? NavbarWidget() : LoginScreen();
  }
}
