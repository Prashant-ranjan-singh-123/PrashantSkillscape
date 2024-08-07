import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prashant_potfolio/shared/color.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/Global_bottom_nav.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/certificate/certificate_screen.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/home_page/about_me_screen.dart';

import 'drawer_menu.dart';

class MyHomePage extends GetView<MyDrawerController> {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      init: MyDrawerController(),
      builder: (controller) => ZoomDrawer(
        controller: controller.zoomDrawerController,
        menuScreen: DrawerMenu(),
        mainScreen: GlobalNavBar(),
        menuScreenWidth: Get.width,
        menuBackgroundColor: ColorOfApp.background.withBlue(35),
        borderRadius: 24.0,
        showShadow: true,
        angle: -5,
        drawerShadowsBackgroundColor: ColorOfApp.background.withBlue(10).withRed(7),
        slideWidth: MediaQuery.of(context).size.width * 0.55,
        style: DrawerStyle.defaultStyle,
      ),
    );
  }
}

class MyDrawerController extends GetxController {
  final zoomDrawerController = ZoomDrawerController();

  void toggleDrawer() {
    zoomDrawerController.toggle?.call();
    update();
  }
}