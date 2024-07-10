import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:prashant_potfolio/shared/global_widgets.dart';
import '../../shared/globalVar&Fun.dart';

class PageViewShow extends StatelessWidget {
  String image_path;
  String heading;
  String subtitle;
  PageViewShow(
      {super.key,
      required this.image_path,
      required this.heading,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    // String imagePath = 'assets/image/onboarding_page1.jpg';
    return Scaffold(
      backgroundColor: Colors.black,
      body: isHeightBigger() ? PorstraitMode() : LandscapeMode(),
    );
  }

  Widget LandscapeMode() {
    return CommonUsedWidget.background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: returnSizeOfScreenWhichIsSmaller() * 0.5,
                  width: returnSizeOfScreenWhichIsBigger(),
                  child: buildPicture()
                      .animate()
                      .scale(duration: 1000.ms, curve: Curves.decelerate)
                      .fadeIn(duration: 2000.ms),
                ),
                const SizedBox(height: 10),
                Text(heading,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Poppins'))
                    .animate()
                    .scale(duration: 1000.ms, curve: Curves.decelerate)
                    .fadeIn(duration: 2000.ms),
                const SizedBox(height: 15),
                SizedBox(
                  width: Get.width * 0.8,
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                      .animate()
                      .scale(duration: 1000.ms, curve: Curves.decelerate)
                      .fadeIn(duration: 2000.ms),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget PorstraitMode() {
    return CommonUsedWidget.background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Get.height * 0.3,
                  ),
                  SizedBox(
                    height: returnSizeOfScreenWhichIsSmaller() * 0.6,
                    width: returnSizeOfScreenWhichIsSmaller(),
                    child: buildPicture()
                        .animate()
                        .scale(duration: 1000.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 2000.ms),
                  ),
                  const SizedBox(height: 20),
                  AutoSizeText(heading,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins'))
                      .animate()
                      .scale(duration: 1000.ms, curve: Curves.decelerate)
                      .fadeIn(duration: 2000.ms),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: Get.width * 0.8,
                    child: AutoSizeText(
                      subtitle,
                      maxLines: 2,
                      style: const TextStyle(
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                      textAlign: TextAlign.center,
                    )
                        .animate()
                        .scale(duration: 1000.ms, curve: Curves.decelerate)
                        .fadeIn(duration: 2000.ms),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPicture() {
    if (image_path.contains('.json')) {
      return Lottie.asset(image_path);
    } else {
      return Image.asset(image_path);
    }
  }
}
