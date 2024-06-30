import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import 'isFirstRunConfig.dart';

class HomeScreenTargetFocus {
  static TargetFocus search({required GlobalKey key}) {
    return TargetFocus(
        identify: "Target 1",
        keyTarget: key,
        shape: ShapeLightFocus.RRect,
        radius: 20,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Card(
                color: Color.fromRGBO(223, 223, 223, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.black,
                        size: 100,
                      ),
                      Text(
                        "Search Field",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Our app's search feature makes finding your perfect pair a breeze. Whether you're looking for the latest sneakers or classic pumps, simply type the name of the shoe you desire into the search bar and click the search button. Instantly, all the relevant details will appear right before your eyes - from available sizes and colors to prices and customer reviews.",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ]);
  }

  static TargetFocus camera({required GlobalKey key}) {
    return TargetFocus(
        identify: "Target 2",
        keyTarget: key,
        shape: ShapeLightFocus.RRect,
        radius: 15,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Card(
                color: Color.fromRGBO(223, 223, 223, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.camera_fill,
                        color: Colors.black,
                        size: 100,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      AutoSizeText(
                        maxLines: 1,
                        "Search Using Camera",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                            color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "With this innovative tool, simply point your camera at any shoe you like, click the search button, and voila! All the details you need will magically appear on your screen. From the shoe's name and brand to available sizes, colors, and prices, everything you need to know is right at your fingertips.",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ]);
  }

  static TargetFocus cursol_slider({required GlobalKey key}) {
    return TargetFocus(identify: "Target 3", keyTarget: key, contents: [
      TargetContent(
          align: ContentAlign.right,
          child: Container(
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Title lorem ipsum",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pulvinar tortor eget maximus iaculis.",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ))
    ]);
  }

  static TargetFocus types({required GlobalKey key}) {
    return TargetFocus(
        identify: "Target 4",
        keyTarget: key,
        shape: ShapeLightFocus.RRect,
        radius: 20,
        contents: [
          TargetContent(
              align: ContentAlign.top,
              child: Card(
                color: const Color.fromRGBO(223, 223, 223, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        MdiIcons.gestureTapButton,
                        color: Colors.black,
                        size: 100,
                      ),
                      const AutoSizeText(
                        maxLines: 1,
                        "Gesture Tap Field",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Explore the touch-sensitive field to unveil a curated selection of footwear tailored to various categories. Click to reveal and immerse yourself in the diverse range of options available.",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ]);
  }

  static TargetFocus items({required GlobalKey key}) {
    return TargetFocus(
        identify: "Target 5",
        keyTarget: key,
        shape: ShapeLightFocus.RRect,
        radius: 20,
        contents: [
          TargetContent(
              align: ContentAlign.top,
              child: Card(
                color: Color.fromRGBO(223, 223, 223, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Transform.scale(
                          scale: 2,
                          child: Image.asset(
                            "assets/image/nike_soes/showcase_image/1.png",
                            width: 100,
                            height: 100,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      const AutoSizeText(
                        maxLines: 1,
                        "Listed Item",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Poppins',
                            color: Colors.black),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "By clicking on the item, you'll be directed to its detailed page where you can seamlessly add it to your cart. Additionally, a long tap on the item will swiftly add it to your favorites list for convenient access later.",
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ]);
  }

  static void showTutorial(List<TargetFocus> targets, BuildContext context) {
    TutorialCoachMark(
      targets: targets, // List<TargetFocus>
      colorShadow: Colors.transparent.withOpacity(0.9), // DEFAULT Colors.black
      hideSkip: true,
      useSafeArea: true,
      // alignSkip: Alignment.bottomRight,
      // textSkip: "SKIP",
      // paddingFocus: 10,
      // opacityShadow: 0.8,
      onClickTarget: (target) {
        print(target);
      },
      onClickTargetWithTapPosition: (target, tapDetails) {
        print("target: $target");
        print(
            "clicked at position local: ${tapDetails.localPosition} - global: ${tapDetails.globalPosition}");
      },
      onClickOverlay: (target) {
        print(target);
      },
      onFinish: () {
        print("finish");
        // CheckFirstRun.setFirstRunBoolHomeTutorialFalse();
      },
    ).show(context: context);
  }
}
