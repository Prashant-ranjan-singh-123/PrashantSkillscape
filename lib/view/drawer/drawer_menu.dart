import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
import 'package:prashant_potfolio/shared/color.dart';
import 'package:prashant_potfolio/view/drawer/drawer_logic.dart';

import 'AppStartingPoint.dart';

class DrawerMenu extends StatelessWidget {
  DrawerMenu({super.key});
  final BottomAppBarPageIndex controlle = Get.put(BottomAppBarPageIndex());
  final MyDrawerController drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: ColorOfApp.background.withBlue(35),
            body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          logoNameAndVersion(),
                          DrawerButton(icon: Iconsax.tag_user, text: 'About Me', context: context, fun: DrawerLogic.aboutMeButton,),
                          DrawerButton(icon: Iconsax.building, text: 'Carrier', context: context, fun: DrawerLogic.carrierButton),
                          DrawerButton(icon: Iconsax.medal_star, text: 'Projects', context: context, fun: DrawerLogic.projectButton),
                          DrawerButton(icon: Iconsax.magic_star, text: 'Certificate', context: context, fun: DrawerLogic.certificateButton),
                          DrawerButton(icon: MdiIcons.github, text: 'Contribute', context: context, fun: DrawerLogic.contributeButton),
                          DrawerButton(icon: Iconsax.star, text: 'Rate Us', context: context, fun: DrawerLogic.rateUsButton),
                          SizedBox(height: 30,)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        'You can’t help everyone, but everyone can help someone.',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorOfApp.textBold,
                          fontFamily: 'Oswald',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Widget logoNameAndVersion() {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            width: Get.width * 0.3,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Image.asset(AppAssets.iconMineCircular),
          ),
          SizedBox(height: 10),
          AutoSizeText(
            'Portfolio',
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: ColorOfApp.textBold,
              fontFamily: 'Merriweather',
            ),
          ),
          AutoSizeText(
            'Version: 1.0.7',
            maxLines: 1,
            style: TextStyle(fontFamily: 'Oswald'),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget DrawerButton({required IconData icon, required String text, required BuildContext context, required Function fun}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: () {
          fun();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorOfApp.background.withBlue(20),
          foregroundColor: ColorOfApp.backgroundBubble,
          shadowColor: ColorOfApp.backgroundBubble,
          elevation: 30,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Icon(icon, color: ColorOfApp.textBold),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(
                  color: ColorOfApp.textBold.withOpacity(0.7),
                  fontFamily: 'Oswald',
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
