import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/shared/global_widgets.dart';
import 'package:prashant_potfolio/shared/motion.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/certificate/certificate_screen_data.dart';

import '../../../shared/color.dart';
import '../../../shared/under_development_dialog.dart';
import '../../drawer/AppStartingPoint.dart';
import 'certificate_screen_logic.dart';

class CertificateScreen extends StatefulWidget {
  CertificateScreen({super.key});

  @override
  State<CertificateScreen> createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen> {
  String currentCategory = 'Cyber';
  final MyDrawerController drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: myColumn(children: [
        ZoomIn(
            delay: Duration(milliseconds: 200),
            duration: Duration(milliseconds: 400),
            curve: Curves.decelerate,
            child: heading_and_subtitle_top()),
        ZoomIn(
            delay: Duration(milliseconds: 500),
            duration: Duration(milliseconds: 400),
            curve: Curves.decelerate,
            child: CustomCoursalSclider()),
        ZoomIn(
          delay: Duration(milliseconds: 800),
          duration: Duration(milliseconds: 400),
          curve: Curves.decelerate,
          child: CertificateScreenLogic(
            onCategorySelected: (category) {
              setState(() {
                currentCategory = category;
              });
            },
          ),
        ),
        ZoomIn(
            delay: Duration(milliseconds: 1100),
            duration: Duration(milliseconds: 400),
            curve: Curves.decelerate,
            child: grid_view_items(selectedCategory: currentCategory))
      ]),
    );
  }

  Widget myColumn({required List<Widget> children}) {
    return CommonUsedWidget.background(
      child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      ),
    );
  }

  Widget heading_and_subtitle_top() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(onPressed: (){
            drawerController.toggleDrawer();
          }, icon: Icon(Iconsax.menu, size: 25,)),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'My Certificates',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    fontFamily: 'Oswald'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Verifiable',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    fontFamily: 'OpenSans',
                    color: Color.fromRGBO(108, 106, 106, 1)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget CustomCoursalSclider() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: MyMotionWidget(
        child: CarouselSlider(
          items: CertificateScreenData.carouselSliderItems,
          options: CarouselOptions(
            aspectRatio: 16 / 7,
            viewportFraction: 0.7,
            initialPage: 3,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.4,
            onPageChanged: (page, _) {},
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }

  Widget grid_view_items({required String selectedCategory}) {
    Widget _buildItem({required Map<String, dynamic> map}) {
      String certName = map['certName'];
      String featureGraphic = map['featureGraphic'];
      String verifyLink = map['links']['verify_link'];

      return GestureDetector(
        onTap: () {
          _showLargeImage(
              image: featureGraphic,
              context: context,
              certName: certName,
              verifyLink: verifyLink);
        },
        child: Column(
          children: [
            MyMotionWidget(
              child: Card(
                color: ColorOfApp.textBold,
                elevation: 50,
                shadowColor: ColorOfApp.cardShadow,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    featureGraphic,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: AutoSizeText(
                        certName,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 10.0, // spacing between rows
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 25.0, //pacing between columns
        ),
        itemBuilder: (context, index) {
          return _buildItem(
              map: CertificateScreenData.experience[selectedCategory]![index]);
        },
        itemCount:
            CertificateScreenData.experience[selectedCategory]?.length ?? 0,
        // itemCount: 1, // Number of items you want to display
      ),
    );
  }

  void _showLargeImage(
      {required String image,
      required BuildContext context,
      required String certName,
      required String verifyLink}) {
    Get.dialog(
      barrierColor: Colors.black.withOpacity(0.95),
      transitionCurve: Curves.easeInExpo,
      transitionDuration: Duration(milliseconds: 500),
      AlertDialog(
        backgroundColor: ColorOfApp.card,
        surfaceTintColor: ColorOfApp.card,
        shadowColor: ColorOfApp.cardShadow.withOpacity(1),
        elevation: 100,
        title: Center(
          child: Text(
            certName,
            maxLines: 1,
            style: TextStyle(fontFamily: 'Merriweather', fontSize: 15),
          ),
        ),
        content: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: ColorOfApp.cardShadow.withOpacity(0.0),
                blurStyle: BlurStyle.normal,
                spreadRadius: 20,
                blurRadius: 150,
              )
            ],
          ),
          child: MyMotionWidget(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(113, 43, 62, 1),
                  elevation: 15,
                  padding: EdgeInsets.all(10),
                  shadowColor: const Color.fromRGBO(113, 43, 62, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    Icon(
                      Iconsax.back_square,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Close',
                      style: TextStyle(color: ColorOfApp.textBold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10), // Add some spacing between buttons
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorOfApp.bottomNavCard,
                  elevation: 10,
                  padding: EdgeInsets.all(10),
                  shadowColor: ColorOfApp.bottomNavCardShadow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  CertificateScreenLogicOpenLink.openBachler(link: verifyLink);
                },
                child: Row(
                  children: [
                    Icon(
                      Iconsax.verify,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Verify',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
