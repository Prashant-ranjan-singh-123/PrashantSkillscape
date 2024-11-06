import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/projects/project_screen.dart';
import '../../shared/color.dart';
import '../../shared/global_widgets.dart';
import '../drawer/AppStartingPoint.dart';
import 'about_me/about_me_screen.dart';
import 'carrier/carrier_screen.dart';
import 'certificate/certificate_screen.dart';

class GlobalNavBar extends StatefulWidget {
  final int initialPageIndex;

  GlobalNavBar({super.key, required this.initialPageIndex});

  @override
  State<GlobalNavBar> createState() => _GlobalNavBarState();
}

class _GlobalNavBarState extends State<GlobalNavBar> {
  final BottomAppBarPageIndex controller = Get.put(BottomAppBarPageIndex());

  @override
  void initState() {
    super.initState();
    // Initialize the controller with the provided initial page index
    controller.setPageIndex(widget.initialPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorOfApp.background,
      body: OrientationBuilder(
        builder: (context, orientation) {
          return CommonUsedWidget.background(
            child: Obx(() {
              return _pages[controller.getPageIndex];
            }),
          );
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  // Method to build Bottom Navigation Bar
  Widget _buildBottomNavigationBar() {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: Obx(() {
        return BottomNavigationBar(
          backgroundColor: ColorOfApp.background,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.getPageIndex,
          unselectedItemColor: ColorOfApp.bottomNavInactiveItem,
          selectedItemColor: ColorOfApp.bottomNavActiveText,
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedLabelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          onTap: (index) {
            controller.setPageIndex(index);
          },
          items: [
            _buildBottomNavigationBarItem(Iconsax.tag_user, 'About Me'),
            _buildBottomNavigationBarItem(Iconsax.buildings, 'Carrier'),
            _buildBottomNavigationBarItem(Iconsax.magic_star, 'Projects'),
            _buildBottomNavigationBarItem(Iconsax.medal_star, 'Certificate'),
          ],
        );
      }),
    );
  }

  // Helper method to build individual items of the Bottom Navigation Bar
  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Icon(icon, color: Colors.white.withOpacity(0.3)),
        ),
      ),
      label: label,
      activeIcon: Card(
        color: ColorOfApp.bottomNavCard,
        elevation: 15,
        shadowColor: ColorOfApp.bottomNavCardShadow,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Icon(icon, color: ColorOfApp.bottomNavActiveIcon),
        ),
      ),
    );
  }

  // List of pages to be displayed
  List<Widget> get _pages => [
        HomeScreen(),
        CarrierScreen(),
        WorkScreen(),
        CertificateScreen(),
      ];
}
