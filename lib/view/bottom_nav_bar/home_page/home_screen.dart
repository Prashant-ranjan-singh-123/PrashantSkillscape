import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/shared/app_assets/AppIcons.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/home_page/home_screen_data.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/home_page/home_screen_logic.dart';
import 'package:simple_progress_indicators/simple_progress_indicators.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../shared/global.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topImageWidget().animate()
                    .scale(
                    delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                    .fadeIn(
                    delay: 400.ms,
                    duration: 1000.ms,
                    curve: Curves.decelerate),
                nameOdDev().animate()
                    .scale(
                    delay: 600.ms, duration: 500.ms, curve: Curves.decelerate)
                    .fadeIn(
                    delay: 600.ms,
                    duration: 1000.ms,
                    curve: Curves.decelerate),
                professionOfDeveloper().animate()
                    .scale(
                    delay: 800.ms, duration: 500.ms, curve: Curves.decelerate)
                    .fadeIn(
                    delay: 800.ms,
                    duration: 1000.ms,
                    curve: Curves.decelerate),
                socialMedia().animate()
                    .scale(
                    delay: 1000.ms,
                    duration: 500.ms,
                    curve: Curves.decelerate)
                    .fadeIn(
                    delay: 1000.ms,
                    duration: 1000.ms,
                    curve: Curves.decelerate),
                aboutText().animate()
                    .scale(
                    delay: 1200.ms,
                    duration: 500.ms,
                    curve: Curves.decelerate)
                    .fadeIn(
                    delay: 1200.ms,
                    duration: 1000.ms,
                    curve: Curves.decelerate),
                skillText()
                // experience()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget padding_between_element({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: child,
    );
  }

  Widget heading({
    required String heading,
    double paddingTop = 20.0,
    double paddingBottom = 20.0,
    bool isCenter = true,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: isCenter
          ? Center(
              child: Text(
                heading,
                style: const TextStyle(
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            )
          : Text(
              heading,
              style: const TextStyle(
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
    );
  }

  Widget topImageWidget() {
    return padding_between_element(
      child: isHeightBigger()
          ? SizedBox(
              height: Get.height * 0.4,
              width: Get.width,
              child: Image.asset('asset/image/prashant.png',
                  height: 250.0, width: 250.0),
            )
          : SizedBox(
              height: Get.width * 0.5,
              width: Get.width,
              child: Image.asset('asset/image/prashant.png',
                  height: 250.0, width: 250.0),
            ),
    );
  }

  Widget nameOdDev() {
    return padding_between_element(
      child: isHeightBigger()
          ? Center(
              child: AutoSizeText(
                HomeScreenData.name,
                maxLines: 1,
                style:
                    TextStyle(fontSize: Get.width * 0.1, fontFamily: 'Oswald'),
              ),
            )
          : Center(
              child: AutoSizeText(
                HomeScreenData.name,
                maxLines: 1,
                style:
                    TextStyle(fontSize: Get.width * 0.1, fontFamily: 'Oswald'),
              ),
            ),
    );
  }

  Widget professionOfDeveloper() {
    return isHeightBigger()
        ? Center(
            child: AutoSizeText(
              HomeScreenData.role,
              maxLines: 1,
              style: TextStyle(
                  fontSize: Get.width,
                  fontFamily: 'Merriweather',
                  color: Colors.grey),
            ),
          )
        : Center(
            child: AutoSizeText(
              HomeScreenData.role,
              maxLines: 1,
              style: TextStyle(
                  fontSize: Get.width,
                  fontFamily: 'Merriweather',
                  color: Colors.grey),
            ),
          );
  }

  Widget aboutText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        color: Colors.black,
        shadowColor: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              heading(heading: 'About', paddingTop: 0, paddingBottom: 20),
              Text(
                HomeScreenData.discription_short,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget socialMedia() {
    // --Buttons Logic--
    Widget AppButton({required String Assetname, required Function fun}) {
      return Center(
        child: Row(
          children: [
            Card(
              color: Colors.black,
              elevation: 5,
              shadowColor: Colors.white,
              child: SizedBox(
                width: Get.width * 0.13,
                height: Get.width * 0.13,
                child: IconButton(
                  onPressed: () {
                    fun();
                  },
                  icon: Image.asset(Assetname),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.03,
            )
          ],
        ),
      );
    }

    return padding_between_element(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Row(
          children: [
            AppButton(
              Assetname: AppAssets.iconWebsite,
              fun: HomeScreenLogic.openWebsite,
            ),
            AppButton(
              Assetname: AppAssets.iconLinkedin,
              fun: HomeScreenLogic.openLinkedin,
            ),
            AppButton(
              Assetname: AppAssets.iconGithub,
              fun: HomeScreenLogic.openGithub,
            ),
            AppButton(
              Assetname: AppAssets.iconTelegram,
              fun: HomeScreenLogic.openTelegram,
            ),
            AppButton(
              Assetname: AppAssets.iconInsta,
              fun: HomeScreenLogic.openInstagram,
            ),
          ],
        ),
      ),
    );
  }

  Widget skillText() {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Card(
        color: Colors.black,
        elevation: 10,
        shadowColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              heading(heading: 'Skills', paddingTop: 0, paddingBottom: 20),
              const Row(
                children: [
                  FlutterLogo(size: 40,),
                  Expanded(
                    child: ProgressBar(
                      value: 0.5,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.yellowAccent, Colors.deepOrange],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
