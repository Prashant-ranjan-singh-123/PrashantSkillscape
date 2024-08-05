import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/global_widgets.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/certificate/certificate_screen_data.dart';

import '../../../shared/color.dart';
import 'certificate_screen_logic.dart';

class CertificateScreen extends StatefulWidget {
  CertificateScreen({super.key});

  @override
  State<CertificateScreen> createState() => _CertificateScreenState();
}

class _CertificateScreenState extends State<CertificateScreen> {
  String currentCategory = 'Cyber';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CommonUsedWidget.background(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heading_and_subtitle_top(),
                  CustomCoursalSclider(),
                  CertificateScreenLogic(
                    onCategorySelected: (category) {
                      setState(() {
                        currentCategory = category;
                      });
                    },
                  ),
                  grid_view_items(selectedCategory: currentCategory)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget heading_and_subtitle_top(){
    return const Column(
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
    );
  }

  Widget CustomCoursalSclider(){
    return Padding(
      padding: const EdgeInsets.only(top: 30),
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
          onPageChanged: (page, _) {

          },
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget grid_view_items({required String selectedCategory}) {

    Widget _buildItem({required Map<String, dynamic> map}) {
      String certName = map['certName'];
      String featureGraphic = map['featureGraphic'];

      return GestureDetector(
        onTap: () {
          // Add onTap functionality here
        },
        child: Column(
          children: [
            Card(
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
          return _buildItem(map: CertificateScreenData.experience[selectedCategory]![index]);
        },
        itemCount: CertificateScreenData.experience[selectedCategory]?.length ?? 0,
        // itemCount: 1, // Number of items you want to display
      ),
    );
  }
}