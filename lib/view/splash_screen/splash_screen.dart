import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:prashant_potfolio/shared/detail_show_screen/show_detail.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/works/work_screen_data.dart';
import '../../shared/global.dart';
import '../bottom_nav_bar/Global_bottom_nav.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void showOnboard() {
    Future.delayed(const Duration(seconds: 3, milliseconds: 500), () {
      // Get.to(
      //     ShowDetail(
      //         heading: WorkScreenData.experience[0][0],
      //         imageLocation: WorkScreenData.experience[0][2],
      //         shortDiscription: WorkScreenData.experience[0][1],
      //         playstoreLink: WorkScreenData.experience[0][5]['Link'][0],
      //         githubLink: WorkScreenData.experience[0][5]['Link'][0]),
      //     transition: Transition.rightToLeft,
      //     duration: 300.ms);
      Get.to(const GlobalNavBar(), transition: Transition.rightToLeft, duration: 300.ms);
    });
  }

  @override
  Widget build(BuildContext context) {
    showOnboard();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: returnSizeOfScreenWhichIsSmaller() * 0.8,
          height: returnSizeOfScreenWhichIsSmaller() * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: returnSizeOfScreenWhichIsSmaller() * 0.5,
                height: returnSizeOfScreenWhichIsSmaller() * 0.5,
                child: Image.asset('asset/image/prashant.png')
                    .animate()
                    .fadeIn(duration: 2000.ms)
                    .slideY(duration: 1000.ms, curve: Curves.decelerate),
              ),
              const AutoSizeText(
                maxLines: 1,
                'PrashantSkillscape',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Poppins',
                    color: Colors.white),
              ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
              const AutoSizeText(
                maxLines: 1,
                '---Flutter Developer---',
                style: TextStyle(fontFamily: 'OpenSans', color: Colors.white),
              )
                  .animate()
                  .fadeIn(duration: 1500.ms, delay: 500.ms)
                  .scaleY(duration: 1000.ms, curve: Curves.decelerate)
            ],
          ),
        ),
      ),
    );
  }
}
