import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/works/work_screen_data.dart';

import '../../../shared/detail_show_screen/show_detail.dart';

class WorkScreen extends StatefulWidget {
  WorkScreen({super.key});

  @override
  State<WorkScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<WorkScreen> {
  // PageController con = PageController();
  final Map<int, dynamic> _categories = {
    0: ['Sports', '45 items'],
    1: ['Running', '49 items'],
    2: ['Lifestyle', '13 items'],
    3: ['Casual', '39 items'],
    4: ['Basketball', '29 items'],
    5: ["Gym", '63 items'],
    6: ['Football', '46 items'],
    7: ['Golf', '68 items'],
    8: ['Tennis', '33 items'],
  };

  final Map<int, dynamic> _showcase = {
    0: [
      'assets/image/nike_soes/showcase_image/1.png',
      '\$50',
      'Nike White Air',
      false
    ],
    1: [
      'assets/image/nike_soes/showcase_image/2.png',
      '\$142',
      'Jordan Jumpman',
      false
    ],
    2: [
      'assets/image/nike_soes/showcase_image/3.png',
      '\$370',
      'Nike Air More',
      false
    ],
    3: [
      'assets/image/nike_soes/showcase_image/4.png',
      '\$172',
      'Nike Downshifter',
      false
    ],
    4: [
      'assets/image/nike_soes/showcase_image/5.png',
      '\$382',
      'Nike Mens Air',
      false
    ],
    5: [
      'assets/image/nike_soes/showcase_image/6.png',
      '\$738',
      'Nike Court Vision',
      false
    ],
    6: [
      'assets/image/nike_soes/showcase_image/7.png',
      '\$945',
      'Nike Man Juniper',
      false
    ],
    7: [
      'assets/image/nike_soes/showcase_image/8.png',
      '\$273',
      'Nike Ait Force',
      false
    ],
    8: [
      'assets/image/nike_soes/showcase_image/9.png',
      '\$629',
      'Jordan Spizike',
      false
    ],
    9: [
      'assets/image/nike_soes/showcase_image/10.png',
      '\$729',
      'Nike Resolution 7',
      false
    ],
    10: [
      'assets/image/nike_soes/showcase_image/11.png',
      '\$620',
      'Nike Go FlyEase',
      false
    ],
  };

  final Map<int, dynamic> _custom_cursol = {
    0: [
      'assets/image/nike_soes/cursor_slider_image/1.png',
      'Nike Spizike 2',
    ],
    1: [
      'assets/image/nike_soes/cursor_slider_image/2.png',
      'Nike Vision Go',
    ],
    2: [
      'assets/image/nike_soes/cursor_slider_image/3.png',
      'Nike Force 4',
    ],
  };

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    // print('length is: ${_categories.length}');
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heading_and_subtitle_top()
                    .animate()
                    .scale(
                        delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                    .desaturate(
                        delay: 400.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                CustomCoursalSclider()
                    .animate()
                    .scale(
                        delay: 600.ms, duration: 500.ms, curve: Curves.decelerate)
                    .fadeIn(
                        delay: 600.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                types()
                    .animate()
                    .scale(
                        delay: 800.ms, duration: 500.ms, curve: Curves.decelerate)
                    .fadeIn(
                        delay: 800.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate),
                grid_view_items()
                    .animate()
                    .scale(
                        delay: 1000.ms,
                        duration: 500.ms,
                        curve: Curves.decelerate)
                    .fadeIn(
                        delay: 1000.ms,
                        duration: 1000.ms,
                        curve: Curves.decelerate)
              ],
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
                color: Color.fromRGBO(108, 106, 106, 1)),
          ),
        ),
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
          onPageChanged: (page, _) {

          },
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
              'My Live Projetcs (OpenSource)',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                fontFamily: 'Oswald',
              ),
            ),
            Text(
              '---Feel Free to Contribute and expand---',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                fontFamily: 'OpenSans',
                color: Color.fromRGBO(108, 106, 106, 1),
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
          Get.to(
              ShowDetail(
                  heading: WorkScreenData.experience[index][0],
                  imageLocation: WorkScreenData.experience[index][2],
                  shortDiscription: WorkScreenData.experience[index][1],
                  playstoreLink: WorkScreenData.experience[index][5]['Link'][0],
                  githubLink: WorkScreenData.experience[index][5]['Link'][0]),
              transition: Transition.fadeIn,
              duration: 500.ms);
        },
        child: Column(
          children: [
            Card(
              color: const Color.fromRGBO(236, 236, 236, 1),
              elevation: 50,
              shadowColor: Colors.grey.withOpacity(0.8),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(WorkScreenData.experience[index][2], fit: BoxFit.contain,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AutoSizeText('${WorkScreenData.experience[index][0]}',
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: Get.width*0.4,
                          fontFamily: 'Poppins')),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: AutoSizeText(
                              WorkScreenData.experience[index][4],
                              maxLines: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                fontFamily: 'OpenSans',
                                color: Color.fromRGBO(108, 106, 106, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget rest_item(int index) {
      return GestureDetector(
        onTap: () {
          Get.to(
              ShowDetail(
                  heading: WorkScreenData.experience[index][0],
                  imageLocation: WorkScreenData.experience[index][2],
                  shortDiscription: WorkScreenData.experience[index][1],
                  playstoreLink: WorkScreenData.experience[index][5]['Link'][0],
                  githubLink: WorkScreenData.experience[index][5]['Link'][0]),
              transition: Transition.fadeIn,
              duration: 500.ms);
        },
        child: Column(
          children: [
            Card(
              color: const Color.fromRGBO(236, 236, 236, 1),
              elevation: 50,
              shadowColor: Colors.grey.withOpacity(0.8),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: AutoSizeText(
                        WorkScreenData.experience[index][4],
                        maxLines: 1,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: 'OpenSans',
                          color: Color.fromRGBO(108, 106, 106, 1),
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
