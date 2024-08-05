import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/Global_bottom_nav.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../shared/app_asset.dart';
import '../../shared/color.dart';
import 'page_view_show.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    List pages;
    pages = [
      PageViewShow(
        title: 'About Me',
        body:
        "Welcome to My portfolio Application! Here\'s You\'ll find everything about me in this portfolio.",
        lottie: AppAssets.lottieAboutMe,
        zoom: 0.5,
      ),
      PageViewShow(
        title: 'Connect With Me',
        body:
        "With the help of my portfolio application you can easily connect with me through many social media platforms.",
        lottie: AppAssets.lottieConnectMe,
        zoom: 1,
      ),
      PageViewShow(
        title: 'Projects and Carrier',
        body:
        "Inside this app, you\'ll discover all about my professional journey, my career milestones and explore my diverse portfolio of projects",
        lottie: AppAssets.lottieProjects,
        zoom: 1,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: PageView(
              onPageChanged: (int val) {
                if (val == 0) {
                  isLast = false;
                  isFirst = true;
                }
                if (val == 2) {
                  isLast = true;
                  isFirst = false;
                }
                if (val != 2 && val != 0) {
                  isLast = false;
                  isFirst = false;
                }
                setState(() {
                  isLast;
                  isFirst;
                });
              },
              controller: controller,
              children: List.generate(pages.length, (index) => pages[index]),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.96),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                if (!isFirst)
                  InkWell(
                      onTap: () {
                        controller.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        backgroundColor: ColorOfApp.cardShadow,
                        child: const Icon(
                          Icons.navigate_before,
                          color: Colors.black,
                        ),
                      ))
                else
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                  ),
                SizedBox(),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                      dotColor: ColorOfApp.textBold,
                      // expansionFactor: 6,
                      activeDotColor: ColorOfApp.backgroundBubble,
                      dotWidth: 7,
                      dotHeight: 7),
                ),
                SizedBox(),
                if (!isLast)
                  InkWell(
                      onTap: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeIn);
                      },
                      child: CircleAvatar(
                        backgroundColor: ColorOfApp.cardShadow,
                        child: const Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                      ))
                else
                  InkWell(
                      onTap: () {
                        Get.off(const GlobalNavBar(),
                            transition: Transition.zoom,
                            duration: const Duration(milliseconds: 450));
                      },
                      child: CircleAvatar(
                        backgroundColor: ColorOfApp.cardShadow,
                        child: const Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                      )),
                SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
