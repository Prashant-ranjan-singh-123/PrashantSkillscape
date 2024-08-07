import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/view/drawer/AppStartingPoint.dart';
import 'package:prashant_potfolio/view/splash_screen/splash_screen.dart';
import 'package:prashant_potfolio/view/splash_screen/splash_screen_one.dart';

void main() {
  Get.put(MyDrawerController());
  Get.put(BottomAppBarPageIndex());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        textTheme: Typography.whiteMountainView,
      ),

      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        textTheme: Typography.whiteMountainView,
      ),
      themeMode: ThemeMode.dark,
      home: const SplashScreenTemp(),
        // home: MyHomePage(),
    );
  }
}