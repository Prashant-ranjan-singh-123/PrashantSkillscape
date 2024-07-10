import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/Global_bottom_nav.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'page_view_show.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: PageView(
              onPageChanged: (int val) {
                if (val == 2) {
                  isLast = true;
                } else {
                  isLast = false;
                }
                setState(() {
                  isLast;
                });
              },
              controller: controller,
              children: [
                PageViewShow(
                  image_path: AppAssets.lottieAboutMe,
                  heading: 'About Me',
                  subtitle:
                      'Welcome to My portfolio Application! Here\'s You\'ll find everything about me in this portfolio.',
                ),
                PageViewShow(
                  image_path: AppAssets.lottieConnectMe,
                  heading: 'Connect With Me',
                  subtitle:
                  'With the help of my portfolio application you can easily connect with me through many social media platforms.',
                ),

                PageViewShow(
                  image_path: AppAssets.lottieProjects,
                  heading: 'Projects and Carrier',
                  subtitle:
                  'Inside this app, you\'ll discover all about my professional journey, my career milestones and explore my diverse portfolio of projects',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Align(
              alignment: const Alignment(0, 0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (!isLast)
                    InkWell(
                        onTap: () {
                          controller.jumpToPage(2);
                        },
                        child: Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              // color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: Center(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'OpenSans',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ))
                  else
                    Container(
                      height: 40,
                      decoration: const BoxDecoration(
                          // color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: Center(
                        child: Text('Skip',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                        dotColor: Colors.white30,
                        activeDotColor: Colors.white,
                        dotWidth: 7,
                        dotHeight: 7),
                  ),
                  if (!isLast)
                    InkWell(
                        onTap: () {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              // color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'OpenSans',fontWeight: FontWeight.w600),
                            ),
                          ),
                        ))
                  else
                    InkWell(
                        onTap: () {
                          Get.off(const GlobalNavBar(),
                              transition: Transition.fadeIn,
                              duration: const Duration(seconds: 1));
                        },
                        child: Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))),
                          child: Center(
                            child: Text(
                              'Done',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'OpenSans',fontWeight: FontWeight.w600),
                            ),
                          ),
                        ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
