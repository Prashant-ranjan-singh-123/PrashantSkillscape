import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/works/work_screen.dart';
import 'package:prashant_potfolio/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white
          ),
        useMaterial3: true,
        textTheme: Typography.whiteMountainView,
      ),
      themeMode: ThemeMode.dark,
      home: SplashScreen(),
    );
  }
}