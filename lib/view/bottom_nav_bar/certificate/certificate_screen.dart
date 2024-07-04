import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../works/work_screen_data.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heading_and_subtitle_top().animate()
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
              ],
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

  Widget customCard({required List<dynamic> experience}){
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 10,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {
                      // Get.to(
                      //     ShowDetail(
                      //         heading: experience[0],
                      //         imageLocation: experience[2],
                      //         shortDiscription: experience[1],
                      //         playstoreLink: experience[5]['Link'][1],
                      //         githubLink: experience[5]['Link'][0]),
                      //     transition: Transition.fadeIn,
                      //     duration: 500.ms);
                    },
                    child: const Text(
                      '     Know More    ',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomCoursalSclider(){
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CarouselSlider(
        items: [customCard(experience: [WorkScreenData.experience[0]])],
        options: CarouselOptions(
          aspectRatio: 16 / 7,
          viewportFraction: 0.7,
          initialPage: 0,
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
}
