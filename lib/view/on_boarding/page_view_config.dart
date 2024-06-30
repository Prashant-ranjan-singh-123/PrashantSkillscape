// import 'package:ShoeHaven/view/on_boarding/page_view_show.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import '../bottom_nav_bar/bottom_nav_bar.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   bool isLast = false;
//   @override
//   Widget build(BuildContext context) {
//     final controller = PageController();
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           SizedBox(
//             width: double.infinity,
//             height: double.infinity,
//             child: PageView(
//               onPageChanged: (int val) {
//                 if (val == 3) {
//                   isLast = true;
//                 } else {
//                   isLast = false;
//                 }
//                 setState(() {
//                   isLast;
//                 });
//               },
//               controller: controller,
//               children: [
//                 PageViewShow(
//                   image_path: 'assets/image/onboarding_page1.png',
//                   heading: 'Categories And Shoes Listing',
//                   subtitle:
//                       'Welcome to our platform! Simply login with your credentials to access a world of possibilities.',
//                 ),
//                 PageViewShow(
//                   image_path: 'assets/image/onboarding_page2.jpeg',
//                   heading: 'Explore Your Perfect Pair',
//                   subtitle:
//                   'With our app, you\'re just a step away from finding the perfect footwear for any occasion. Book your order now',
//                 ),

//                 PageViewShow(
//                   image_path: 'assets/image/onboarding_page3.jpg',
//                   heading: 'Add To F̌avourite',
//                   subtitle:
//                   'Browse through our extensive catalog of footwear and effortlessly save your favorite styles for easy access later.',
//                 ),

//                 PageViewShow(
//                   image_path: 'assets/image/onboarding_page4.png',
//                   heading: 'Customise Your Profile',
//                   subtitle:
//                   'Get ready to make your shoe-buying journey even more personalized. With our app, you can customize your profile.',
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 35),
//             child: Align(
//               alignment: const Alignment(0, 0.9),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   if (!isLast)
//                     InkWell(
//                         onTap: () {
//                           controller.jumpToPage(3);
//                         },
//                         child: Container(
//                           height: 40,
//                           decoration: const BoxDecoration(
//                               // color: Theme.of(context).colorScheme.primary,
//                               borderRadius: BorderRadius.only(
//                                   topRight: Radius.circular(5),
//                                   bottomRight: Radius.circular(5))),
//                           child: Center(
//                             child: Text(
//                               'Skip',
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   fontFamily: 'OpenSans',
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ))
//                   else
//                     Container(
//                       height: 40,
//                       decoration: const BoxDecoration(
//                           // color: Theme.of(context).colorScheme.background,
//                           borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(5),
//                               bottomRight: Radius.circular(5))),
//                       child: Center(
//                         child: Text('Skip',
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.white,
//                                 fontFamily: 'OpenSans',
//                                 fontWeight: FontWeight.w600)),
//                       ),
//                     ),
//                   SmoothPageIndicator(
//                     controller: controller,
//                     count: 4,
//                     effect: const ScrollingDotsEffect(
//                         dotColor: Colors.black26,
//                         activeDotColor: Colors.black,
//                         fixedCenter: true,
//                         dotWidth: 7,
//                         activeDotScale: 1.1,
//                         dotHeight: 7),
//                   ),
//                   if (!isLast)
//                     InkWell(
//                         onTap: () {
//                           controller.nextPage(
//                               duration: const Duration(milliseconds: 400),
//                               curve: Curves.easeIn);
//                         },
//                         child: Container(
//                           height: 40,
//                           decoration: const BoxDecoration(
//                               // color: Theme.of(context).colorScheme.primary,
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(5),
//                                   bottomLeft: Radius.circular(5))),
//                           child: Center(
//                             child: Text(
//                               'Next',
//                               style: TextStyle(
//                                   fontSize: 14, fontFamily: 'OpenSans',fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ))
//                   else
//                     InkWell(
//                         onTap: () {
//                           Get.off(const BottomNavBar(),
//                               transition: Transition.fadeIn,
//                               duration: const Duration(seconds: 1));
//                         },
//                         child: Container(
//                           height: 40,
//                           decoration: const BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(5),
//                                   bottomLeft: Radius.circular(5))),
//                           child: Center(
//                             child: Text(
//                               'Done',
//                               style: TextStyle(
//                                   fontSize: 14, fontFamily: 'OpenSans',fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ))
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
