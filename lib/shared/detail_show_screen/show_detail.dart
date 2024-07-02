import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/shared/detail_show_screen/show_detail_logic.dart';

class ShowDetail extends StatelessWidget {
  String heading;
  String imageLocation;
  String shortDiscription;
  String playstoreLink;
  String githubLink;
  ShowDetail(
      {super.key,
      required this.heading,
      required this.imageLocation,
      required this.shortDiscription,
      required this.playstoreLink,
      required this.githubLink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              myAppBar(),
              imageShowCase(),
              headingOfApplication(headingOfProject: heading),
              discription(),
              externalLink()
            ],
          ),
        ),
      ),
    );
  }

  Widget myAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                ShowDetailLogic.back_button_logic();
              },
              child: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            'Information',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                fontFamily: 'Oswald'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: GestureDetector(
              onTap: () {
                ShowDetailLogic.send_button_logic();
              },
              child: const Icon(CupertinoIcons.share,
                  color: Colors.white, size: 30),
            ),
          )
        ],
      ),
    );
  }

  Widget imageShowCase() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 40),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadowColor: Colors.white,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(imageLocation)),
      ),
    );
  }

  Widget headingOfApplication({required String headingOfProject}) {
    return Column(
      children: [
        AutoSizeText(
            maxLines: 1,
            headingOfProject,
            style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 35,
                fontFamily: 'Merriweather')),
        SizedBox(
          height: Get.height * 0.02,
        ),
      ],
    );
  }

  Widget discription(){
    return Expanded(
      child: SingleChildScrollView(
        child: Text(
          shortDiscription,
          style: const TextStyle(fontFamily: 'Oswald'),
        ),
      ),
    );
  }

  Widget externalLink(){
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
                onPressed: () {
                  ShowDetailLogic.open_github_project();
                },
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    foregroundColor: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      MdiIcons.github,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            'Github',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins'),
                          ),
                        )),
                  ],
                )),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
              child: ElevatedButton(
                onPressed: () {
                  ShowDetailLogic.open_playstore_project();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color.fromRGBO(10, 102, 194, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.googlePlay,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Flexible(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              'PlayStore',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Poppins'),
                            ),
                          )),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
