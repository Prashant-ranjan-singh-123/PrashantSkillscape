import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
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
      'Food Mania',
      'Get ready to tantalize your taste buds and unleash your inner chef with Food Mania, a recipe app built with love using Flutter! Immerse yourself in a world of culinary delights as you browse through our ever-growing collection of delicious dishes.',
      AppAssets.featureGraphicFoodMania,
      AppAssets.appScreenFoodMania,
      'Playstore | Github',
      {
        'Link': [
          '',
          'https://github.com/Prashant-ranjan-singh-123/Food-Mania',
        ]
      }
    ],
    3: [
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
    4: [
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
    5: [
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
    6: [
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
            colors: [Colors.white, Colors.grey], // adjust colors as needed
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
                            color: Colors.black,
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
                              color: Color.fromRGBO(108, 106, 106, 1),
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
                              backgroundColor: Colors.black,
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
                                enterBottomSheetDuration: const Duration(milliseconds: 300),
                                exitBottomSheetDuration: const Duration(milliseconds: 300),
                                barrierColor: Colors.black.withOpacity(0.8),
                                elevation: 5,
                                isDismissible: false
                            );
                          },
                          child: const Text(
                            '     Know More    ',
                            style: TextStyle(color: Colors.white),
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

class BottomSheetLogic{
  static void back_button_logic(){
    Get.back();
  }

  static void send_button_logic(){
    Development.showDialogBox();
  }

  static void open_github_project(){
    Development.showDialogBox();
  }

  static void open_playstore_project(){
    Development.showDialogBox();
  }
}
