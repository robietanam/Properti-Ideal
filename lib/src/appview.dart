import 'dart:async';
import 'package:flutter/material.dart';

import 'props/theme/app_theme.dart';
import 'props/theme/textfont.dart';
import 'view/homepage/homepage_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'view/homepage/navbar.dart';

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
  bool _isLoggedin = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (_isLoggedin) ? NavbarWidget() : NavbarWidget();
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  late double width;
  late double height;

  @override
  void initState() {
    super.initState();
    Size screenSize = WidgetsBinding.instance.window.physicalSize;

    width = screenSize.width;
    height = screenSize.height;

    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => RoutePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width / 6,
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/app-icon.png',
                    scale: 1,
                  ),
                ),
                Container(
                  width: width / 4,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: const TextLogo(
                    text: 'Photonism',
                  ),
                ),
                Container(
                  width: width / 4,
                  alignment: Alignment.center,
                  child: const TextJudul(
                    text: 'Share moment pariwisatamu',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
