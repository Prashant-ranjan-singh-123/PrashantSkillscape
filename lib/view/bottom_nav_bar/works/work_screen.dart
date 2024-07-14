import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/works/work_screen_data.dart';
import '../../../shared/color.dart';
import '../../../shared/global_widgets.dart';

class WorkScreen extends StatefulWidget {
  WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WorkScreen> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    // print('length is: ${_categories.length}');
    return Scaffold(
      backgroundColor: Colors.black,
      body: CommonUsedWidget.background(
        child: SafeArea(
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ZoomIn(delay: Duration(milliseconds: 200), duration: Duration(milliseconds: 400), curve: Curves.decelerate , child: heading_and_subtitle_top()),
                  ZoomIn(delay: Duration(milliseconds: 500), duration: Duration(milliseconds: 400), curve: Curves.decelerate , child: CustomCoursalSclider()),
                  ZoomIn(delay: Duration(milliseconds: 800), duration: Duration(milliseconds: 400), curve: Curves.decelerate , child: types()),
                  ZoomIn(delay: Duration(milliseconds: 1100), duration: Duration(milliseconds: 400), curve: Curves.decelerate , child: grid_view_items())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget heading_and_subtitle_top() {
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
            'My Live Projects',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: ColorOfApp.textBold,
                fontFamily: 'Oswald'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Github Link | Playstore Link',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              fontFamily: 'OpenSans',
              color: ColorOfApp.textLight,
            ),
          ),
        )
      ],
    );
  }

  Widget CustomCoursalSclider() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CarouselSlider(
        items: WorkScreenData.cursol_slider_item,
        options: CarouselOptions(
          aspectRatio: 16 / 7,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (page, _) {},
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Widget types() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 45),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'My Live Projects',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: ColorOfApp.textBold,
                fontFamily: 'Oswald',
              ),
            ),
            Text(
              '---Feel Free to Contribute and expand---',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                fontFamily: 'OpenSans',
                color: ColorOfApp.textLight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget grid_view_items() {
    Widget first_item(int index) {
      return GestureDetector(
        onTap: () {
          Get.bottomSheet(
              BottonSheet().bottomSheet(
                  heading: WorkScreenData.experience[index][0],
                  imageLocation: WorkScreenData.experience[index][2],
                  shortDiscription: WorkScreenData.experience[index][1],
                  playstoreLink: WorkScreenData.experience[index][5]['Link'][0],
                  githubLink: WorkScreenData.experience[index][5]['Link'][1]),
              isScrollControlled: false,
              backgroundColor: Colors.transparent,
              enterBottomSheetDuration: const Duration(milliseconds: 300),
              exitBottomSheetDuration: const Duration(milliseconds: 300),
              barrierColor: Colors.black.withOpacity(0.8),
              elevation: 5,
              isDismissible: false);
        },
        child: Column(
          children: [
            Card(
              color: ColorOfApp.card,
              elevation: 50,
              shadowColor: ColorOfApp.cardShadow,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    WorkScreenData.experience[index][2],
                    fit: BoxFit.contain,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AutoSizeText('${WorkScreenData.experience[index][0]}',
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: Get.width * 0.4,
                      color: ColorOfApp.textBold,
                      fontFamily: 'Poppins')),
            )
          ],
        ),
      );
    }

    Widget rest_item(int index) {
      return GestureDetector(
        onTap: () {
          Get.bottomSheet(
              BottonSheet().bottomSheet(
                heading: WorkScreenData.experience[index][0],
                imageLocation: WorkScreenData.experience[index][2],
                shortDiscription: WorkScreenData.experience[index][1],
                playstoreLink: WorkScreenData.experience[index][5]['Link'][0],
                githubLink: WorkScreenData.experience[index][5]['Link'][1],
              ),
              isScrollControlled: false,
              backgroundColor: Colors.transparent,
              enterBottomSheetDuration: const Duration(milliseconds: 300),
              exitBottomSheetDuration: const Duration(milliseconds: 300),
              barrierColor: Colors.black.withOpacity(0.8),
              elevation: 5,
              isDismissible: false);
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
                  WorkScreenData.experience[index][2],
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
                        '${WorkScreenData.experience[index][0]}',
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

    Widget build_grid_view(int index) {
      if (index == 0) {
        return first_item(index);
      } else {
        return rest_item(index);
      }
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
          crossAxisSpacing: 25.0, // spacing between columns
        ),
        itemBuilder: (context, index) {
          return build_grid_view(index);
        },
        itemCount: WorkScreenData.experience.length,
        // itemCount: 1, // Number of items you want to display
      ),
    );
  }
}
