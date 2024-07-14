import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/carrier/carrier_screen_data.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../../shared/color.dart';
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
                  experience(),
                  education(),
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
                  color: ColorOfApp.textBold,
                ),
              ),
            )
          : Text(
              heading,
              style: const TextStyle(
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: ColorOfApp.textBold,
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
      lineXY:
          1, // Adjust this value to move the timeline line closer to the left
      isLast: isLast,
      beforeLineStyle: const LineStyle(
        color: ColorOfApp.carrierTimeline,
        thickness: 1,
      ),
      indicatorStyle: const IndicatorStyle(
        width: 20,
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 50,
        color: ColorOfApp.carrierTimelineDot,
        drawGap: true,
      ),
      startChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GestureDetector(
          onTap: () async {
            fun();
          },
          child: Card(
            color: ColorOfApp.card,
            shadowColor: ColorOfApp.cardShadow,
            elevation: 15,
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
                        color: ColorOfApp.textBold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    body,
                    style: const TextStyle(color: ColorOfApp.textLight),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget education() {
    Widget my_card(
        {required String heading,
        required String body,
        required Function fun,
        required int index}) {
      int delayTimeToShow = (index * 300) + 400;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GestureDetector(
          onTap: () {
            fun();
          },
          child: Card(
            color: ColorOfApp.card,
            shadowColor: ColorOfApp.cardShadow,
            elevation: 15,
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
                      color: ColorOfApp.textBold
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(body, style: const TextStyle(color: ColorOfApp.textLight),),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Divider(
          thickness: 0.5,
          color: ColorOfApp.textLight
        ),
        heading(heading: 'Education'),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: CarrierScreenData.education.length,
            itemBuilder: (_, index) {
              return ZoomIn(
                delay: Duration(milliseconds: (CarrierScreenData.experience.length - 1)),
                child: my_card(
                    heading: CarrierScreenData.education[index + 1][0],
                    body: CarrierScreenData.education[index + 1][1],
                    fun: CarrierScreenData.education[index + 1][2],
                    index: index + 1),
              );
            }),
        const SizedBox(
          height: 40,
        ),
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
                return ZoomIn(
                  delay: Duration(milliseconds: (CarrierScreenData.experience.length - 1 - index) * 200),
                  curve: Curves.decelerate,
                  child: myCustomTimeline(
                      isLast: true,
                      heading: CarrierScreenData.experience[index + 1][0],
                      body: CarrierScreenData.experience[index + 1][1],
                      fun: CarrierScreenData.experience[index + 1][2]),
                );
              } else {
                return ZoomIn(
                  delay: Duration(milliseconds: (CarrierScreenData.experience.length - 1 - index) * 200),
                  curve: Curves.decelerate,
                  child: myCustomTimeline(
                      isLast: false,
                      heading: CarrierScreenData.experience[index + 1][0],
                      body: CarrierScreenData.experience[index + 1][1],
                      fun: CarrierScreenData.experience[index + 1][2]),
                );
              }
            })
      ],
    );
  }
}
