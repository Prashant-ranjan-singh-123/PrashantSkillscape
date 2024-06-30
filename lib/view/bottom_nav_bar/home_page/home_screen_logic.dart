import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/home_page/home_screen_data.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenLogic {
  // -- To Open Linkedin Logic --
  static void openLinkedin() async {
    Future<bool> isLinkedInInstalled() async {
      Uri url = Uri.parse('linkedin://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = HomeScreenData.linkedin_link;
    bool isInstalled = await isLinkedInInstalled();
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

  // -- To Open Github Logic --
  static void openGithub() async {
    Future<bool> isGithubInInstalled() async {
      Uri url = Uri.parse('github://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = HomeScreenData.github_link;
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

  // -- To Open Telegram Logic --
  static void openTelegram() async {
    Future<bool> isTelegramInstalled() async {
      Uri url = Uri.parse('telegram://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = HomeScreenData.telegram_link;
    bool isInstalled = await isTelegramInstalled();
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

  // -- To Open Instagram Logic --
  static void openInstagram() async {
    Future<bool> isInstaInstalled() async {
      Uri url = Uri.parse('insta://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = HomeScreenData.insta_link;
    bool isInstalled = await isInstaInstalled();
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

  // -- To Open Website Logic --
  static void openWebsite() async {
    String dt = HomeScreenData.website_link;
    Uri url = Uri.parse(dt);
    try {
      await launchUrl(url);
    }catch (e){
      throw 'Could not launch $url';
    }
  }
}
