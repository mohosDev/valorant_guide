import 'dart:async';

import 'package:flutter/material.dart';
import 'package:valorent_guide/app/core/constants/app_assets.dart';

import '../../../core/constants/app_colors.dart';
import '../home/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  static String routeName = 'splashPage';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 2500),
      () => Navigator.pushReplacementNamed(context, Home.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColorDark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Image(
                image: AssetImage(
                  AppAssets.logoPathSplash,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Image(
                image: AssetImage(
                  AppAssets.textPathSplash,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
