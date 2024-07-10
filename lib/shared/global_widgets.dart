import 'package:aura_box/aura_box.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/shared/color.dart';
import '../view/bottom_nav_bar/works/work_screen_data.dart';

class BottonSheet {
  DraggableScrollableSheet bottomSheet({
    required heading,
    required imageLocation,
    required shortDiscription,
    required playstoreLink,
    required githubLink,
  }) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      minChildSize: 1,
      maxChildSize: 1,
      builder: (_, controller) {
        return Container(
          width: Get.width,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                _myPadding(child: _buildDragHandle()),
                _myPadding(child: _myAppBar()),
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _imageShowCase(imageLocation: imageLocation),
                        _myPadding(
                            child: _headingOfApplication(
                                headingOfProject: heading)),
                        _myPadding(
                            child: _discription(
                                shortDiscription: shortDiscription)),
                      ],
                    ),
                  ),
                ),
                _myPadding(
                    child: _externalLink(
                        playstore: playstoreLink, github: githubLink))
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDragHandle() {
    return Center(
      child: Container(
        width: 40,
        height: 5,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(2.5),
        ),
      ),
    );
  }

  Widget _myAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          const Text(
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
                BottomSheetLogic.send_button_logic();
              },
              child: const Icon(CupertinoIcons.share,
                  color: Colors.white, size: 30),
            ),
          )
        ],
      ),
    );
  }

  Widget _imageShowCase({required imageLocation}) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 20.0, bottom: 40, right: 15, left: 15),
      child: SizedBox(
        width: Get.width * 0.8,
        child: Card(
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Colors.white,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imageLocation)),
        ),
      ),
    );
  }

  Widget _headingOfApplication({required String headingOfProject}) {
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

  Widget _discription({required shortDiscription}) {
    return Text(
      shortDiscription,
      style: const TextStyle(fontFamily: 'Oswald'),
    );
  }

  Widget _externalLink({required String playstore, required String github}) {
    Widget _playstorePlusGit(
        {required String github, required String playstore}) {
      return Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                  onPressed: () {
                    BottomSheetLogic.open_github_project(link: github);
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
                              color: Colors.white, fontFamily: 'Poppins'),
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
                BottomSheetLogic.open_playstore_project(link: playstore);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(10, 102, 194, 1),
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

    Widget _githubShow({required String github}) {
      return Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                  onPressed: () {
                    BottomSheetLogic.open_github_project(link: github);
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
                              color: Colors.white, fontFamily: 'Poppins'),
                        ),
                      )),
                    ],
                  )),
            ),
          ],
        ),
      );
    }

    Widget _playStoreShow({required String playstore}) {
      return Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: Row(
          children: [
            Expanded(
                child: ElevatedButton(
              onPressed: () {
                BottomSheetLogic.open_playstore_project(link: playstore);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(10, 102, 194, 1),
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

    if (github.isNotEmpty && playstore.isNotEmpty) {
      return _playstorePlusGit(github: github, playstore: playstore);
    } else if (github.isNotEmpty) {
      return _githubShow(github: github);
    } else if (playstore.isNotEmpty) {
      return _playStoreShow(playstore: playstore);
    } else {
      return const SizedBox();
    }
  }

  Widget _myPadding({required child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }
}

class CommonUsedWidget {
  static Widget background({required child, bool isBottomNav = false}) {
    return AuraBox(
        spots: [
          AuraSpot(
            color: ColorOfApp.backgroundBubble,
            radius: 400.0,
            alignment: const Alignment(0.7,-0.7),
            blurRadius: 0,
            stops: const [0, 0.9],
          ),
          AuraSpot(
            color: ColorOfApp.backgroundBubble,
            radius: 400.0,
            alignment: const Alignment(-0.7,0.7),
            blurRadius: 0,
            stops: const [0, 0.9],
          ),
        ],
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: isBottomNav? Container(
          height: 20,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ColorOfApp.background.withOpacity(0.9),
                ColorOfApp.background.withOpacity(0.9),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: child,
        )
            :
        Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            ColorOfApp.background.withOpacity(0.9),
            ColorOfApp.background.withOpacity(0.9),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: child,
        )
    );
  }
}
