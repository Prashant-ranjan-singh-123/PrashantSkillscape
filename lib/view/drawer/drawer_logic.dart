import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/view/drawer/home_page_edit/home_page_edit_ui.dart';
import 'package:url_launcher/url_launcher.dart';
import 'AppStartingPoint.dart';

final BottomAppBarPageIndex controlle = Get.put(BottomAppBarPageIndex());
final MyDrawerController drawerController = Get.put(MyDrawerController());


class DrawerLogic{
  static void aboutMeButton(){
    controlle.setPageIndex(0);
    // Get.to(HomePageEditUi());
  }

  static void carrierButton(){
    controlle.setPageIndex(1);
  }

  static void projectButton(){
    controlle.setPageIndex(2);
  }

  static void certificateButton(){
    controlle.setPageIndex(3);
  }

  static Future<void> contributeButton() async {
    Future<bool> isGithubInInstalled() async {
      Uri url = Uri.parse('github://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = 'https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape';
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

  static Future<void> rateUsButton() async {
    String dt = 'https://play.google.com/store/apps/details?id=com.prashant.project.portfolio';
    Uri url = Uri.parse(dt);
    try {
      await launchUrl(url);
    }catch (e){
      throw 'Could not launch $url';
    }
  }
}