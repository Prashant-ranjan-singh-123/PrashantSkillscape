import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:prashant_potfolio/shared/detail_show_screen/show_detail.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/works/work_screen_data.dart';
import '../../shared/global.dart';
import '../bottom_nav_bar/Global_bottom_nav.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> showOnboard() async {
    Future.delayed(const Duration(seconds: 3, milliseconds: 500), () {
      Get.to(const GlobalNavBar(),
          transition: Transition.rightToLeft, duration: 300.ms);
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
      body: myCustomColumn(children: [
        logo()
            .animate()
            .fadeIn(duration: 2000.ms)
            .slideY(duration: 1000.ms, curve: Curves.decelerate),
        nameOfApp()
            .animate()
            .fadeIn(duration: 1000.ms, delay: 500.ms),
        shortDiscription()
            .animate()
            .fadeIn(duration: 1500.ms, delay: 500.ms)
            .scaleY(duration: 1000.ms, curve: Curves.decelerate)
      ]),
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
        child: Image.asset('asset/image/prashant.png'));
  }

  Widget nameOfApp() {
    return const AutoSizeText(
      maxLines: 1,
      'PrashantSkillscape',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          fontFamily: 'Poppins',
          color: Colors.white),
    );
  }

  Widget shortDiscription() {
    return const AutoSizeText(
      maxLines: 1,
      '---Flutter Developer---',
      style: TextStyle(fontFamily: 'OpenSans', color: Colors.white),
    );
  }
}
