import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
import 'package:prashant_potfolio/shared/global_widgets.dart';
import '../../shared/globalVar&Fun.dart';
import '../on_boarding/check_first_run.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> showOnboard() async {
    await Future.delayed(const Duration(seconds: 1), () {
      Get.offAll(const OnboardingOrMainScreen());
    });
  }

  @override
  void initState() {
    super.initState();
    showOnboard();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CommonUsedWidget.background(
        child: myCustomColumn(
          children: [
            logo(),
            nameOfApp(),
            shortDescription()
          ],
        ),
      ),
    );
  }

  Widget myCustomColumn({required List<Widget> children}) {
    return Center(
      child: SizedBox(
        width: returnSizeOfScreenWhichIsSmaller() * 0.8,
        height: returnSizeOfScreenWhichIsSmaller() * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }

  Widget logo() {
    return SizedBox(
      width: returnSizeOfScreenWhichIsSmaller() * 0.5,
      height: returnSizeOfScreenWhichIsSmaller() * 0.5,
      child: Image.asset(AppAssets.iconMine),
    );
  }

  Widget nameOfApp() {
    return Column(
      children: const [
        SizedBox(height: 25),
        AutoSizeText(
          'Portfolio',
          maxLines: 1,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            fontFamily: 'Poppins',
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget shortDescription() {
    return const AutoSizeText(
      '---Flutter Developer---',
      maxLines: 1,
      style: TextStyle(fontFamily: 'OpenSans', color: Colors.white),
    );
  }
}