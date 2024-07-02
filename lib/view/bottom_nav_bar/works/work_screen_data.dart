import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/app_assets/AppIcons.dart';

import '../../../shared/detail_show_screen/show_detail.dart';

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
      '''Heal on Call revolutionizes healthcare delivery with its cutting-edge platform built on a robust Laravel backend. This powerful foundation ensures lightning-fast performance and unwavering reliability, seamlessly handling high user loads even during peak times.
  At the heart of Heal on Call lies a sophisticated authentication system catering to both patients and healthcare providers. The app offers a streamlined sign-up and login process, safeguarding sensitive medical information with state-of-the-art security protocols. Users benefit from convenient features like password reset and account recovery, ensuring uninterrupted access to vital healthcare services.
  The app's interface is thoughtfully designed to provide tailored experiences for patients and doctors alike. Intuitive navigation and responsive design guarantee a smooth user experience across both mobile devices and desktop computers, putting the power of healthcare at your fingertips.
  Heal on Call's advanced appointment booking system is a game-changer in healthcare accessibility. Patients can view real-time doctor availability, instantly book appointments, and receive immediate confirmations. The flexible scheduling options allow for easy rescheduling or cancellations, while automated reminders via email and push notifications ensure you never miss an important medical appointment.
  Finding the right healthcare provider is effortless with Heal on Call's comprehensive doctor discovery feature. Detailed profiles showcase each doctor's specializations, qualifications, and patient reviews. Advanced search filters and geolocation services help patients locate nearby doctors or specialists that meet their specific needs.
  The app's integrated telemedicine capabilities bring the doctor's office to your living room. High-quality video consultations enable face-to-face interactions with healthcare providers, while secure file sharing facilitates the exchange of medical reports and images. Digital prescription generation and delivery streamline the medication process, saving time and reducing errors.
  Heal on Call simplifies the financial aspect of healthcare with its versatile payment processing system. Multiple payment options, including credit cards, digital wallets, and insurance, cater to diverse user preferences. Transparent pricing and itemized billing provide clarity, while automated insurance claim submission eases the administrative burden for patients.
  Personal health management reaches new heights with Heal on Call's integrated health tracking features. The app securely stores personal health records and medical history, offers medication reminders, and seamlessly integrates with popular fitness devices and apps to provide a holistic view of your health.
  Round-the-clock support ensures users are never left in the lurch. An AI-powered chatbot provides instant responses to common queries, complemented by live chat support during business hours. A comprehensive FAQ and help center offer additional resources for users seeking information or assistance.
  Heal on Call prioritizes user privacy and data security, implementing HIPAA-compliant data storage and transmission protocols. End-to-end encryption safeguards all communications, while regular security audits and updates maintain the highest standards of data protection.
  For administrators and healthcare providers, Heal on Call offers powerful analytics and reporting tools. Insightful dashboards present usage statistics, trend analyses, and performance metrics, enabling continuous improvement and informed decision-making.
  Experience the future of healthcare with Heal on Call – your all-encompassing solution for on-demand medical services. From booking appointments to virtual consultations, from managing your health records to processing payments, Heal on Call reimagines every aspect of healthcare delivery, bringing quality medical care directly to your smartphone or computer.''',
      AppAssets.featureGraphicDoctorOnHome,
      AppAssets.appScreenDoctorOnHome,
      'PlayStore',
      {
        'Link': [
          'https://play.google.com/store/apps/details?id=com.doctor.home',
          'https://github.com/Prashant-ranjan-singh-123/doctor-on-home'
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
          'https://github.com/Prashant-ranjan-singh-123/Food-Mania',
          ''
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
        'Link': ['https://github.com/Prashant-ranjan-singh-123/shoe_haven','']
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
          'https://github.com/Prashant-ranjan-singh-123/Priority-list-task',
          ''
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
          'https://github.com/Prashant-ranjan-singh-123/flutter-Unwrapped',
          ''
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
          'https://www.linkedin.com/feed/update/urn:li:activity:7211610859310125056/',
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
                            Get.to(
                                ShowDetail(
                                    heading: experience[0],
                                    imageLocation: experience[2],
                                    shortDiscription: experience[1],
                                    playstoreLink: experience[5]['Link'][1],
                                    githubLink: experience[5]['Link'][0]),
                                transition: Transition.fadeIn,
                                duration: 500.ms);
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
