import 'package:android_intent_plus/android_intent.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../shared/color.dart';
import '../../../shared/global_widgets.dart';
import '../../../shared/under_development_dialog.dart';

class WorkScreenData {
  static List<Widget> cursol_slider_item = [
    WorkScreenData.customCard(experience: experience[0]),
    WorkScreenData.customCard(experience: experience[1]),
    WorkScreenData.customCard(experience: experience[2]),
    WorkScreenData.customCard(experience: experience[3]),
    WorkScreenData.customCard(experience: experience[4]),
    WorkScreenData.customCard(experience: experience[5]),
    WorkScreenData.customCard(experience: experience[6]),
  ];

  static Map<int, dynamic> experience = {
    0: [
      'Doctor On Home',
      'This app, built with care, connects you to top-notch doctors at your fingertips. Skip the waiting rooms and experience healthcare on-demand. Let Heal on Call be your pocket-sized clinic, available whenever you need it.',
      AppAssets.featureGraphicDoctorOnHome,
      AppAssets.appScreenDoctorOnHome,
      'PlayStore',
      {
        'Link': [
          'https://play.google.com/store/apps/details?id=com.doctor.home',
          ''
        ]
      }
    ],
    1: [
      'Mathmaica Mind',
      'Mathmaica Mind learning arithmetic fun and challenging! Choose your difficulty and test your skills in a gamified experience, and start the game.',
      AppAssets.featureGraphicMathmaticaMind,
      AppAssets.appScreenMathmaticaMind,
      'Playstore | Github',
      {
        'Link': [
          'https://play.google.com/store/apps/details?id=com.prashant.mathmatica.mind.mathmatics_mind',
          'https://github.com/Prashant-ranjan-singh-123/Mathmatica-Mind'
        ]
      }
    ],
    2: [
      'Portfolio',
      'PrashantSkillscape: Your professional journey, beautifully presented. This Flutter-built portfolio app showcases your skills, experience, and achievements with style. Featuring Material Design 3, it displays your name, designation, social media links, and a concise summary. Easily customizable, it highlights your education, work history, projects, and certifications. Whether you\'re a Flutter expert or novice, adapting this app is simple. Make a lasting impression with PrashantSkillscape - where your career story comes to life in a tap.',
      AppAssets.featureGraphicPrashantSkillscape,
      AppAssets.appScreenPrashantSkillScape,
      'Playstore | Github',
      {
        'Link': [
          'https://play.google.com/store/apps/details?id=com.prashant.project.portfolio',
          'https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape',
        ]
      }
    ],
    3: [
      'Tic Tac Tangle',
      'You have the opportunity to engage in a game of Tic Tac Toe on your Android phone. There is no requirement to use paper in order to partake in this intriguing puzzle game! At present, you are able to enjoy the game of Tic Tac Toe on your Android device without any cost. Our latest rendition showcases a contemporary twist with an appealing glow design.',
      AppAssets.featureGraphicTicTacTangle,
      AppAssets.appScreenTicTacTangle,
      'Playstore | Github',
      {
        'Link': [
          'https://play.google.com/store/apps/details?id=com.prashant.game.tictactoe.tic_tac_toe_final',
          'https://github.com/Prashant-ranjan-singh-123/Modern-Tic-Tac-Tangle',
        ]
      }
    ],
    4: [
      'Food Mania',
      'Get ready to tantalize your taste buds and unleash your inner chef with Food Mania, a recipe app built with love using Flutter! Immerse yourself in a world of culinary delights as you browse through our ever-growing collection of delicious dishes.',
      AppAssets.featureGraphicFoodMania,
      AppAssets.appScreenFoodMania,
      'Playstore | Github',
      {
        'Link': [
          'https://play.google.com/store/apps/details?id=com.prashant.foodmania.project',
          'https://github.com/Prashant-ranjan-singh-123/Food-Mania',
        ]
      }
    ],
    5: [
      'ShoeHaven',
      'Welcome to our sleek and stylish shoe-buying app, built entirely with Flutter. Immerse yourself in a world of modern design and seamless animations as you browse through our collection of footwear.',
      AppAssets.featureGraphicShoeHaven,
      AppAssets.appScreenShoeHaven,
      'Playstore | Github',
      {
        'Link': [
          '',
          'https://github.com/Prashant-ranjan-singh-123/shoe_haven',
        ]
      }
    ],
    6: [
      'Priority list',
      'This comprehensive app empowers you to manage to-do\'s, manage time and notify about your daily rutine tasks. From streamlined installation to free UI, Priority List equips you for success.',
      AppAssets.featureGraphicPriorityList,
      AppAssets.appScreenPriorityList,
      'Github',
      {
        'Link': [
          '',
          'https://github.com/Prashant-ranjan-singh-123/Priority-list-task',
        ]
      }
    ],
    7: [
      'Flutter Unwrapped',
      'Flutter Unwrapped unlocks the world of Flutter development on your mobile device. This comprehensive app empowers you to learn the fundamentals, build practical skills, and prepare for your Flutter developer journey. From streamlined installation to free UI kits, Flutter Unwrapped equips you for success.',
      AppAssets.featureGraphicFlutterUnwrapped,
      AppAssets.appScreenFlutterUnwrapped,
      'Github',
      {
        'Link': [
          '',
          'https://github.com/Prashant-ranjan-singh-123/flutter-Unwrapped',
        ]
      }
    ],
    8: [
      'Skilled Worker',
      'It\'s a notification app that allows users to sign up with specific categories like Doctor, Photographer, Programmer etc. Upon signup, the chosen category is attached to the profile. With a premium plan, users can send notifications to specific groups or all members of the app. Notifications include a title, message, and an image that others can download.',
      AppAssets.featureGraphicSkilledWorker,
      AppAssets.appScreenSkilledWorker,
      'Linkedin Only',
      {
        'Link': [
          // 'https://www.linkedin.com/feed/update/urn:li:activity:7211610859310125056/',
          '',
          ''
        ]
      }
    ],
  };

  static Widget customCard({required List<dynamic> experience}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              ColorOfApp.projectCursorSliderGradientTop,
              ColorOfApp.projectCursorSliderGradientDown
            ], // adjust colors as needed
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: SizedBox(
            height: Get.height * 0.2,
            width: Get.width,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(experience[0],
                          maxLines: 1,
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 23,
                            color: ColorOfApp.projectCursorSliderTextBold,
                            fontFamily: 'Merriweather',
                          )),
                      Expanded(
                        child: SizedBox(
                          child: SingleChildScrollView(
                              child: Text(
                            experience[1],
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorOfApp.projectCursorSliderTextLight,
                              fontFamily: 'Merriweather',
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // const Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ColorOfApp.background,
                              elevation: 10,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          onPressed: () {
                            Get.bottomSheet(
                                BottonSheet().bottomSheet(
                                    heading: experience[0],
                                    imageLocation: experience[2],
                                    shortDiscription: experience[1],
                                    playstoreLink: experience[5]['Link'][0],
                                    githubLink: experience[5]['Link'][1]),
                                isScrollControlled: false,
                                backgroundColor: Colors.black,
                                enterBottomSheetDuration:
                                    const Duration(milliseconds: 300),
                                exitBottomSheetDuration:
                                    const Duration(milliseconds: 300),
                                barrierColor: Colors.black.withOpacity(0.8),
                                elevation: 5,
                                isDismissible: false);
                          },
                          child: const Text(
                            '     Know More    ',
                            style: TextStyle(color: ColorOfApp.textBold),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    experience[3],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetLogic {
  static void back_button_logic() {
    Get.back();
  }

  static void send_button_logic() {
    Development.showDialogBox();
  }

  static void open_github_project({required String link}) {
    BottomSheetLogic.openGithub(dt: link);
  }

  static void open_playstore_project({required String link}) {
    BottomSheetLogic.openPlayStore(dt: link);
  }

  // -- To Open Github with Link Logic --
  static void openGithub({required String dt}) async {
    Future<bool> isGithubInInstalled() async {
      Uri url = Uri.parse('github://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

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

  // Function to open Play Store link
  static void openPlayStore({required String dt}) async {
    Future<bool> isPlayStoreInstalled() async {
      Uri url = Uri.parse('market://details?id=$dt');
      if (await canLaunch(url.toString())) {
        return true;
      } else {
        return false;
      }
    }

    bool isInstalled = await isPlayStoreInstalled();
    if (isInstalled) {
      // Play Store is installed, launch the app
      AndroidIntent intent = AndroidIntent(
        action: 'action_view',
        data: dt,
      );
      await intent.launch();
    } else {
      // Play Store is not installed, open in browser
      Uri url = Uri.parse(dt);
      if (await canLaunch(url.toString())) {
        await launch(url.toString());
      } else {
        throw 'Could not launch Play Store link: $url';
      }
    }
  }
}
