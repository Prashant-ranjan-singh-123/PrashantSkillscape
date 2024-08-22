import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/color.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/Global_bottom_nav.dart';
import 'drawer_menu.dart';

class MainApp extends GetView<MyDrawerController> {
  MainApp({Key? key, required this.isRTL}) : super(key: key);
  final BottomAppBarPageIndex controlle = Get.put(BottomAppBarPageIndex());
  final bool isRTL;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyDrawerController>(
      init: MyDrawerController(),
      builder: (controller) => ZoomDrawer(
        controller: controller.zoomDrawerController,
        menuScreen: DrawerMenu(),
        mainScreen: GlobalNavBar(initialPageIndex: controlle.getPageIndex,),
        mainScreenTapClose: true,
        menuScreenWidth: Get.width,
        menuBackgroundColor: ColorOfApp.background.withBlue(35),
        borderRadius: 24.0,
        showShadow: true,
        angle: -5,
        isRtl: false,
        mainScreenScale: 0.25,
        drawerShadowsBackgroundColor: ColorOfApp.background.withBlue(10).withRed(7),
        slideWidth: MediaQuery.of(context).size.width * 0.5,
        style: DrawerStyle.defaultStyle,
        disableDragGesture: true,
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

class BottomAppBarPageIndex extends GetxController {
  var currentIndex = 0.obs;

  void setPageIndex(int index) {
    if (index >= 0 && index <= 3) {
      currentIndex.value = index;
    }
  }

  int get getPageIndex => currentIndex.value;
}