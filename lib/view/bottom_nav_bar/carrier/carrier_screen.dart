import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/carrier/carrier_screen_data.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../shared/global_widgets.dart';

class CarrierScreen extends StatelessWidget {
  CarrierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CommonUsedWidget.background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  experience().animate()
                      .scale(
                      delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                      .fadeIn(
                      delay: 400.ms,
                      duration: 1000.ms,
                      curve: Curves.decelerate),
                  education().animate()
                      .scale(
                      delay: 400.ms, duration: 500.ms, curve: Curves.decelerate)
                      .fadeIn(
                      delay: 400.ms,
                      duration: 1000.ms,
                      curve: Curves.decelerate),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget padding_between_element({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: child,
    );
  }

  Widget heading({
    required String heading,
    double paddingTop = 20.0,
    double paddingBottom = 20.0,
    bool isCenter = true,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: isCenter
          ? Center(
        child: Text(
          heading,
          style: const TextStyle(
            fontSize: 40,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      )
          : Text(
        heading,
        style: const TextStyle(
          fontSize: 40,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget myCustomTimeline({
    required bool isLast,
    required String heading,
    required String body,
    required Function fun,
  }) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 1, // Adjust this value to move the timeline line closer to the left
      isLast: isLast,
      beforeLineStyle: const LineStyle(
        color: Colors.white,
        thickness: 2,
      ),
      indicatorStyle: const IndicatorStyle(
        width: 20,
        height: 50,
        color: Colors.white,
      ),
      startChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GestureDetector(
          onTap: () async {
            fun();
          },
          child: Card(
            color: Colors.black,
            shadowColor: Colors.white,
            elevation: 10,
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(body),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget education() {
    Widget my_card({
      required String heading,
      required String body,
      required Function fun,
      required int index
    }) {
      int delayTimeToShow  = (index*300)+400;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GestureDetector(
          onTap: (){
            fun();
          },
          child: Card(
            color: Colors.black,
            shadowColor: Colors.white,
            elevation: 10,
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      fontFamily: 'Oswald',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(body),
                ],
              ),
            ),
          ),
        ),
      ).animate()
          .scale(
          delay: delayTimeToShow.ms, duration: 500.ms, curve: Curves.decelerate)
          .fadeIn(
          delay: delayTimeToShow.ms,
          duration: 1000.ms,
          curve: Curves.decelerate);
    }

    return Column(
      children: [
        SizedBox(height: 40,),
        const Divider(
          thickness: 0.5,
        ),
        heading(heading: 'Education'),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: CarrierScreenData.education.length,
            itemBuilder: (_, index) {
              return my_card(
                  heading: CarrierScreenData.education[index + 1][0],
                  body: CarrierScreenData.education[index + 1][1],
                  fun: CarrierScreenData.education[index + 1][2],
                  index: index+1
              );
            }),
        SizedBox(height: 40,),
      ],
    );
  }

  Widget experience() {
    return Column(
      children: [
        heading(heading: 'Experience'),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: CarrierScreenData.experience.length,
            reverse: true,
            itemBuilder: (_, index) {
              if (index == 0) {
                return myCustomTimeline(
                    isLast: true,
                    heading: CarrierScreenData.experience[index + 1][0],
                    body: CarrierScreenData.experience[index + 1][1],
                    fun: CarrierScreenData.experience[index + 1][2]);
              } else {
                return myCustomTimeline(
                    isLast: false,
                    heading: CarrierScreenData.experience[index + 1][0],
                    body: CarrierScreenData.experience[index + 1][1],
                    fun: CarrierScreenData.experience[index + 1][2]);
              }
            })
      ],
    );
  }
}
