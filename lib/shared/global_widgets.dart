import 'package:aura_box/aura_box.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/shared/color.dart';
import 'package:prashant_potfolio/shared/motion.dart';
import 'package:share_plus/share_plus.dart';
import '../view/bottom_nav_bar/projects/project_screen_data.dart';

class BottonSheet {
  DraggableScrollableSheet bottomSheet({
    required heading,
    required imageLocation,
    required shortDiscription,
    required playstoreLink,
    required githubLink,
    required appStoreLink,
    required shareText
  }) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      minChildSize: 1,
      maxChildSize: 1,
      builder: (_, controller) {
        return Container(
          width: Get.width,
          decoration: const BoxDecoration(
            color: ColorOfApp.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                _myPadding(child: _buildDragHandle()),
                _myPadding(child: _myAppBar(shareText: shareText)),
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
                        playstore: playstoreLink, github: githubLink, appStore: appStoreLink)),
                SizedBox(height: 15,)
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
          color: ColorOfApp.bottomSheetHandle,
          borderRadius: BorderRadius.circular(2.5),
        ),
      ),
    );
  }

  Widget _myAppBar({required String shareText}) {
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
                color: ColorOfApp.bottomSheetIcon,
                size: 30,
              ),
            ),
          ),
          const Text(
            'Information',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: ColorOfApp.textBold,
                fontFamily: 'Oswald'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: GestureDetector(
              onTap: () async {
                // BottomSheetLogic.send_button_logic();
                await Share.share(shareText);
              },
              child: const Icon(CupertinoIcons.share,
                  color: ColorOfApp.bottomSheetIcon, size: 30),
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
        child: MyMotionWidget(
          child: Card(
            color: ColorOfApp.card,
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            shadowColor: ColorOfApp.cardShadow,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(imageLocation)),
          ),
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
                color: ColorOfApp.textBold,
                fontFamily: 'Merriweather')),
        SizedBox(
          height: Get.height * 0.02,
        ),
      ],
    );
  }

  Widget _discription({required shortDiscription}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        shortDiscription,
        style: const TextStyle(fontFamily: 'Oswald', color: ColorOfApp.textLight),
      ),
    );
  }



  // Widget _externalLink({required String playstore, required String github, required String appStore}) {
  //   Widget _githubButton({required VoidCallback onPressed}) {
  //     return OutlinedButton(
  //       onPressed: onPressed,
  //       style: OutlinedButton.styleFrom(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(5),
  //         ),
  //         foregroundColor: ColorOfApp.background,
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Icon(MdiIcons.github, color: Colors.white),
  //           const SizedBox(width: 10),
  //           const Flexible(
  //             child: SingleChildScrollView(
  //               scrollDirection: Axis.horizontal,
  //               child: Text(
  //                 'Github',
  //                 style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  //
  //   Widget _playstoreButton({required VoidCallback onPressed}) {
  //     return ElevatedButton(
  //       onPressed: onPressed,
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: ColorOfApp.cardShadow,
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //       ),
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 3),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Icon(MdiIcons.googlePlay, color: Colors.white),
  //             const SizedBox(width: 10),
  //             const Flexible(
  //               child: SingleChildScrollView(
  //                 scrollDirection: Axis.horizontal,
  //                 child: Text(
  //                   'PlayStore',
  //                   style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  //
  //   Widget _playstorePlusGit({required String github, required String playstore}) {
  //     return Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 25),
  //       child: Row(
  //         children: [
  //           Expanded(
  //             child: _githubButton(onPressed: () => BottomSheetLogic.open_github_project(link: github)),
  //           ),
  //           const SizedBox(width: 15),
  //           Expanded(
  //             child: _playstoreButton(onPressed: () => BottomSheetLogic.open_playstore_project(link: playstore)),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  //
  //   Widget _githubShow({required String github}) {
  //     return Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 25),
  //       child: Row(
  //         children: [
  //           Expanded(
  //             child: _githubButton(onPressed: () => BottomSheetLogic.open_github_project(link: github)),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  //
  //   Widget _playStoreShow({required String playstore}) {
  //     return Padding(
  //       padding: const EdgeInsets.symmetric(vertical: 25),
  //       child: Row(
  //         children: [
  //           Expanded(
  //             child: _playstoreButton(onPressed: () => BottomSheetLogic.open_playstore_project(link: playstore)),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  //
  //   if (github.isNotEmpty && playstore.isNotEmpty) {
  //     return _playstorePlusGit(github: github, playstore: playstore);
  //   } else if (github.isNotEmpty) {
  //     return _githubShow(github: github);
  //   } else if (playstore.isNotEmpty) {
  //     return _playStoreShow(playstore: playstore);
  //   } else {
  //     return const SizedBox();
  //   }
  // }


  Widget _externalLink({required String playstore, required String github, required String appStore}) {

    Widget _githubButton({required VoidCallback onPressed}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            foregroundColor: ColorOfApp.background,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.github, color: Colors.white),
              const SizedBox(width: 10),
              const Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    'GitHub',
                    style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _playstoreButton({required VoidCallback onPressed}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorOfApp.cardShadow,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.googlePlay, color: Colors.white),
              const SizedBox(width: 10),
              const Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    'PlayStore',
                    style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _appStoreButton({required VoidCallback onPressed}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorOfApp.background,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            elevation: 10,
            shadowColor: ColorOfApp.cardShadow
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(MdiIcons.apple, color: Colors.white),
              const SizedBox(width: 10),
              const Flexible(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    'App Store',
                    style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _buttonsRow({required List<Widget> buttons}) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Row(
          children: buttons
              .map((button) => Expanded(child: button))
              .toList(),
        ),
      );
    }

    if (github.isNotEmpty && playstore.isNotEmpty && appStore.isNotEmpty) {
      print('yehh');
      return _buttonsRow(buttons: [
        _githubButton(onPressed: () => BottomSheetLogic.open_github_project(link: github)),
        // const SizedBox(width: 5),
        _playstoreButton(onPressed: () => BottomSheetLogic.open_playstore_project(link: playstore)),
        // const SizedBox(width: 5),
        _appStoreButton(onPressed: () => BottomSheetLogic.open_appstore_project(link: appStore)),
      ]);
    } else if (github.isNotEmpty && playstore.isNotEmpty) {
      return _buttonsRow(buttons: [
        _githubButton(onPressed: () => BottomSheetLogic.open_github_project(link: github)),
        // const SizedBox(width: 15),
        _playstoreButton(onPressed: () => BottomSheetLogic.open_playstore_project(link: playstore)),
      ]);
    } else if (github.isNotEmpty && appStore.isNotEmpty) {
      return _buttonsRow(buttons: [
        _githubButton(onPressed: () => BottomSheetLogic.open_github_project(link: github)),
        // const SizedBox(width: 15),
        _appStoreButton(onPressed: () => BottomSheetLogic.open_appstore_project(link: appStore)),
      ]);
    } else if (playstore.isNotEmpty && appStore.isNotEmpty) {
      return _buttonsRow(buttons: [
        _playstoreButton(onPressed: () => BottomSheetLogic.open_playstore_project(link: playstore)),
        // const SizedBox(width: 15),
        _appStoreButton(onPressed: () => BottomSheetLogic.open_appstore_project(link: appStore)),
      ]);
    } else if (github.isNotEmpty) {
      return _githubButton(onPressed: () => BottomSheetLogic.open_github_project(link: github));
    } else if (playstore.isNotEmpty) {
      return _playstoreButton(onPressed: () => BottomSheetLogic.open_playstore_project(link: playstore));
    } else if (appStore.isNotEmpty) {
      return _appStoreButton(onPressed: () => BottomSheetLogic.open_appstore_project(link: appStore));
    } else {
      return const SizedBox();
    }
  }

  // Widget _externalLink({required String playstore, required String github, required String appStore}) {
  //   Widget _button({
  //     required String label,
  //     required IconData icon,
  //     required VoidCallback onPressed,
  //   }) {
  //     return ElevatedButton(
  //       onPressed: onPressed,
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: ColorOfApp.cardShadow,
  //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Icon(icon, color: Colors.white),
  //           const SizedBox(width: 10),
  //           Flexible(
  //             child: SingleChildScrollView(
  //               scrollDirection: Axis.horizontal,
  //               child: Text(
  //                 label,
  //                 style: const TextStyle(color: Colors.white, fontFamily: 'Poppins'),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  //
  //   List<Widget> _buildButtons() {
  //     List<Widget> buttons = [];
  //
  //     if (github.isNotEmpty) {
  //       buttons.add(_button(
  //         label: 'GitHub',
  //         icon: MdiIcons.github,
  //         onPressed: () => BottomSheetLogic.open_github_project(link: github),
  //       ));
  //     }
  //
  //     if (playstore.isNotEmpty) {
  //       buttons.add(_button(
  //         label: 'PlayStore',
  //         icon: MdiIcons.googlePlay,
  //         onPressed: () => BottomSheetLogic.open_playstore_project(link: playstore),
  //       ));
  //     }
  //
  //     if (appStore.isNotEmpty) {
  //       buttons.add(_button(
  //         label: 'App Store',
  //         icon: MdiIcons.apple,
  //         onPressed: () => BottomSheetLogic.open_appstore_project(link: appStore),
  //       ));
  //     }
  //
  //     return buttons;
  //   }
  //
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 25),
  //     child: GridView.count(
  //       shrinkWrap: true,
  //       crossAxisCount: 2,
  //       crossAxisSpacing: 10,
  //       mainAxisSpacing: 10,
  //       children: _buildButtons(),
  //     ),
  //   );
  // }



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
