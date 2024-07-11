import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
import 'package:url_launcher/url_launcher.dart';

class Development{
  static void openGithub() async {
    Future<bool> isGithubInInstalled() async {
      Uri url = Uri.parse('github://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt =
        'https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape';
    bool isInstalled = await isGithubInInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(action: 'action_view', data: dt);
      await intent.launch();
    } else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  static void showDialogBox() {
    Get.dialog(
      AlertDialog(
        backgroundColor: const Color.fromRGBO(236, 236, 236, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        shadowColor: Colors.black,
        elevation: 50,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 200,
              child: Lottie.asset(AppAssets.lottieConstruction, reverse: true),
            ),
            const SizedBox(height: 32),
            const Text(
              maxLines: 1,
              "Under Construction",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(28, 27, 32, 1),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "The functionality you're referring to is currently in development. If you have insights or solutions to offer, we welcome your contributions on GitHub.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color:Color.fromRGBO(108, 106, 106, 1),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 20,
                  ),
                  onPressed: () async {
                    Development.openGithub();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 20,
                          width: 20,
                          child: Icon(MdiIcons.github, color: Colors.white,)),
                      const SizedBox(width: 10,),
                      const Text(
                        "Contribute",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(
                      113, 43, 62, 1),
                    elevation: 20,
                  ),
                  onPressed: () async {
                    Get.back();
                  },
                  child: const Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}