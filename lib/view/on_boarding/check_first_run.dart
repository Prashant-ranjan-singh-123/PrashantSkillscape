import 'package:flutter/material.dart';
import 'package:prashant_potfolio/shared/color.dart';
import 'package:prashant_potfolio/shared/global_widgets.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/Global_bottom_nav.dart';
import '../../shared/shared_pref.dart';
import 'page_view_config.dart';

class OnboardingOrMainScreen extends StatelessWidget {
  const OnboardingOrMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SharedPrefFunctions.setFirstRunBoolOnboardFalse();
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        builder: (ctx, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return waitingScreen();
          } else {
            if (snap.hasError) {
              return hasError();
            } else {
              // bool isFirstRunVar = snap.data as bool;
              bool isFirstRunVar = true;
              if (isFirstRunVar) {
                return const OnBoardingScreen();
              } else {
                return const GlobalNavBar();
              }
            }
          }
        },
        future: SharedPrefFunctions.isFirstRunOnboard(),
      ),
    );
  }

  Widget waitingScreen() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget hasError() {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CommonUsedWidget.background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Error Occur',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: ColorOfApp.textBold,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 30,),
            Text(
              'Some Error Occur Please Contact the developer at prashant.singh.12312345@gmail.com with screen shot of application',
              textAlign: TextAlign.center, style: TextStyle(fontFamily: 'OpenSans', color: ColorOfApp.textLight),
            ),


          ],
        ),
      ),
    );
  }
}
