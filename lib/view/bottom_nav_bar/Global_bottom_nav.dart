import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
  final NotchBottomBarController _controller = NotchBottomBarController(index: 0);

  int maxCount = 3;

  final List<Widget> bottomBarPages = [
    HomeScreen(),
    CarrierScreen(),
    WorkScreen(),
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(22,40,38,1),
      body: bottom_nav_bar_3_body(),
      bottomNavigationBar: bottom_nav_bar_3().animate().slideY(
          begin: 12,
          delay: 1000.ms,
          duration: 1000.ms,
          curve: Curves.decelerate),
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
      backgroundColor: Color.fromRGBO(25, 24, 39, 1.0),
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

  Widget bottom_nav_bar_1_body(){
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
        color: Color.fromRGBO(6,58,52, 1),
      notchColor: Color.fromRGBO(5,202,173, 0.35),
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

  Widget bottom_nav_bar_3_body(){
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(bottomBarPages.length, (index) => bottomBarPages[index]),
    );
  }

  // Widget bottom_nav_bar_2(){
  //   return CrystalNavigationBar(
  //     currentIndex: _selectedIndex,
  //     height: 0,
  //     // indicatorColor: Colors.blue,
  //     unselectedItemColor: Colors.white54,
  //     backgroundColor: Colors.black.withOpacity(1),
  //     enableFloatingNavBar: true,
  //     onTap: (index) => setState(() {
  //       _selectedIndex = index;
  //     }),
  //     items: [
  //       /// Home
  //       CrystalNavigationBarItem(
  //         icon: CupertinoIcons.home,
  //         unselectedIcon: CupertinoIcons.house_fill,
  //         selectedColor: Colors.white,
  //       ),
  //
  //       /// Favourite
  //       CrystalNavigationBarItem(
  //         icon: Icons.school_outlined,
  //         unselectedIcon: Icons.school,
  //         selectedColor: Colors.red,
  //       ),
  //
  //       /// Add
  //       CrystalNavigationBarItem(
  //         icon: MdiIcons.googlePlay,
  //         unselectedIcon: MdiIcons.googlePlay,
  //         selectedColor: Colors.white,
  //       ),
  //     ],
  //   );
  // }
}
