import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../shared/color.dart';
import '../../shared/global_widgets.dart';
import 'carrier/carrier_screen.dart';
import 'home_page/home_screen.dart';
import 'works/work_screen.dart';

class GlobalNavBar extends StatefulWidget {
  const GlobalNavBar({super.key});

  @override
  State<GlobalNavBar> createState() => _GlobalNavBarState();
}

class _GlobalNavBarState extends State<GlobalNavBar> {
  int _selectedIndex = 0;

  // Notch Bar
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 3;

  final List<Widget> bottomBarPages = [
    HomeScreen(),
    CarrierScreen(),
    WorkScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonUsedWidget.background(child: bottom_nav_bar_2_body()),
      bottomNavigationBar: bottom_nav_bar_2(),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget bottom_nav_bar() {
    return FlashyTabBar(
      selectedIndex: _selectedIndex,
      backgroundColor: const Color.fromRGBO(25, 24, 39, 1.0),
      onItemSelected: (index) => setState(() {
        _selectedIndex = index;
      }),
      items: [
        FlashyTabBarItem(
          icon: const Icon(CupertinoIcons.home, color: Colors.white),
          title: const Text(
            'Myself',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        FlashyTabBarItem(
          icon: const Icon(
            Icons.school_outlined,
            color: Colors.white,
          ),
          title: const Text('Carrier',
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
        FlashyTabBarItem(
          icon: Icon(
            MdiIcons.googlePlay,
            color: Colors.white,
          ),
          title: const Text('Works',
              style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
        // FlashyTabBarItem(
        //   icon: Icon(MdiIcons.certificateOutline, color: Colors.white,),
        //   title: const Text('Certificate', style: TextStyle(color: Colors.white, fontSize: 15)),
        // ),
      ],
    );
  }

  Widget bottom_nav_bar_1_body() {
    if (_selectedIndex == 0) {
      return HomeScreen();
    } else if (_selectedIndex == 1) {
      return CarrierScreen();
    } else {
      return WorkScreen();
    }
  }

  Widget bottom_nav_bar_3() {
    return AnimatedNotchBottomBar(
      color: const Color.fromRGBO(6, 58, 52, 1),
      notchColor: const Color.fromRGBO(5, 202, 173, 0.35),
      bottomBarItems: const [
        BottomBarItem(
          inActiveItem: Icon(
            CupertinoIcons.home,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            CupertinoIcons.house_fill,
            color: Colors.white,
          ),
          itemLabel: 'Page 1',
        ),
        BottomBarItem(
          inActiveItem: Icon(
            Icons.school_outlined,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            Icons.school,
            color: Colors.white,
          ),
          itemLabel: 'Page 2',
        ),
        BottomBarItem(
          inActiveItem: Icon(
            CupertinoIcons.cube,
            color: Colors.blueGrey,
          ),
          activeItem: Icon(
            CupertinoIcons.cube_fill,
            color: Colors.white,
          ),
          itemLabel: 'Page 3',
        )
      ],
      notchBottomBarController: _controller,
      onTap: (int value) {
        _pageController.jumpToPage(value);
      },
      kIconSize: 24.0,
      kBottomRadius: 28.0,
    );
  }

  Widget bottom_nav_bar_3_body() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
          bottomBarPages.length, (index) => bottomBarPages[index]),
    );
  }

  Widget bottom_nav_bar_2() {
    BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
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

    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        backgroundColor: ColorOfApp.background,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: ColorOfApp.bottomNavInactiveItem,
        selectedItemColor: ColorOfApp.bottomNavActiveText,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: (index) {
          setState(() {
            switch (index) {
              case 0:
                _selectedIndex = 0;
                break;
              case 1:
                _selectedIndex = 1;
                break;
              case 2:
                _selectedIndex = 2;
                break;
              default:
                _selectedIndex = 0;
                break;
            }
          });
        },
        items: [
          _buildNavItem(Iconsax.tag_user, 'About Me'),
          _buildNavItem(Iconsax.buildings, 'Carrier'),
          _buildNavItem(Iconsax.box, 'Projects'),
        ],
      ),
    );
  }

  Widget bottom_nav_bar_2_body() {
    if (_selectedIndex == 0) {
      return HomeScreen();
    } else if (_selectedIndex == 1) {
      return CarrierScreen();
    } else {
      return WorkScreen();
    }
  }
}
