import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'carrier/carrier_screen.dart';
import 'certificate/certificate_screen.dart';
import 'home_page/home_screen.dart';
import 'works/work_screen.dart';

class GlobalNavBar extends StatefulWidget {
  const GlobalNavBar({super.key});

  @override
  State<GlobalNavBar> createState() => _GlobalNavBarState();
}

class _GlobalNavBarState extends State<GlobalNavBar> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _current_screen(),
      bottomNavigationBar: bottom_nav_bar().animate()
          .slideY(
          begin: 12,
          delay: 1000.ms,
          duration: 1000.ms,
          curve: Curves.decelerate)

      ,
    );
  }

  Widget _current_screen(){
    if(_selectedIndex==0){
      return HomeScreen();
    }else if(_selectedIndex ==1){
      return CarrierScreen();
    }else if(_selectedIndex ==2){
      return WorkScreen();
    }else {
      return const CertificateScreen();
    }
  }

  Widget bottom_nav_bar(){
    return FlashyTabBar(
      selectedIndex: _selectedIndex,
      backgroundColor: Colors.black87,

      showElevation: false,

      onItemSelected: (index) => setState(() {
        _selectedIndex = index;
      }),
      items: [
        FlashyTabBarItem(
          icon: const Icon(CupertinoIcons.home, color: Colors.white),
          title: const Text('Myself', style: TextStyle(color: Colors.white, fontSize: 15),),
        ),
        FlashyTabBarItem(
          icon: const Icon(Icons.school_outlined, color: Colors.white,),
          title: const Text('Carrier', style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
        FlashyTabBarItem(
          icon: Icon(MdiIcons.googlePlay, color: Colors.white,),
          title: const Text('Works', style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
        FlashyTabBarItem(
          icon: Icon(MdiIcons.certificateOutline, color: Colors.white,),
          title: const Text('Certificate', style: TextStyle(color: Colors.white, fontSize: 15)),
        ),
      ],
    );
  }
}