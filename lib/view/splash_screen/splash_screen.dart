import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
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
    await Future.delayed(const Duration(milliseconds: 3500), () {
      Get.offAll(() => OnboardingOrMainScreen());
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
        child: myCustomColumn(children: [
          Lottie.asset(AppAssets.lottieHello, repeat: false)
        ]),
      ),
    );
  }
  Widget myCustomColumn({required List<Widget> children}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}