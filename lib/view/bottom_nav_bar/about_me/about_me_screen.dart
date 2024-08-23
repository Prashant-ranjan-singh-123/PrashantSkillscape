import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
import 'package:prashant_potfolio/shared/motion.dart';
import '../../../shared/color.dart';
import '../../../shared/globalVar&Fun.dart';
import '../../../shared/global_widgets.dart';
import '../../drawer/AppStartingPoint.dart';
import 'about_me_screen_data.dart';
import 'about_me_screen_logic.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MyDrawerController drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CommonUsedWidget.background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDownBig(child: topImageWidget()),
                  FadeInDownBig(delay: Duration(milliseconds: 100), child: nameOdDev()),
                  FadeInDownBig(delay: Duration(milliseconds: 200), child: professionOfDeveloper()),
                  FadeInDownBig(delay: Duration(milliseconds: 300), child: socialMedia()),
                  FadeInDownBig(delay: Duration(milliseconds: 400), child: aboutText()),
                  FadeInDownBig(delay: Duration(milliseconds: 500), child: skillText()),
                  FadeInDownBig(delay: Duration(milliseconds: 600), child: contactMe()),
                  FadeInDownBig(delay: Duration(milliseconds: 700), child: socialProfileSelf())
                  // experience()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget padding_between_element({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: child,
    );
  }

  Widget heading({
    required String heading,
    double paddingTop = 20.0,
    double paddingBottom = 20.0,
    double fontSize = 40,
    bool isCenter = true,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      child: isCenter
          ? Center(
              child: AutoSizeText(
                heading,
                maxLines: 1,
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: ColorOfApp.textBold,
                ),
              ),
            )
          : Text(
              heading,
              style: TextStyle(
                fontSize: fontSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w800,
                color: ColorOfApp.textBold,
              ),
            ),
    );
  }

  Widget topImageWidget() {
    return padding_between_element(
      child: Stack(
        children: [
          MyMotionWidget(
            child: isHeightBigger()
                ? SizedBox(
                    height: Get.height * 0.4,
                    width: Get.width,
                    child: Image.asset(AppAssets.iconMine,
                        height: 250.0, width: 250.0),
                  )
                : SizedBox(
                    height: Get.width * 0.5,
                    width: Get.width,
                    child: Image.asset(AppAssets.iconMine,
                        height: 250.0, width: 250.0),
                  ),
          ),

          IconButton(onPressed: (){
            drawerController.toggleDrawer();
          }, icon: Icon(Iconsax.menu, size: 25,))
        ],
      ),
    );
  }

  Widget nameOdDev() {
    return padding_between_element(
      child: isHeightBigger()
          ? Center(
              child: AutoSizeText(
                HomeScreenData.name,
                maxLines: 1,
                style: TextStyle(
                    color: ColorOfApp.textBold,
                    fontSize: Get.width * 0.1,
                    fontFamily: 'Oswald'),
              ),
            )
          : Center(
              child: AutoSizeText(
                HomeScreenData.name,
                maxLines: 1,
                style: TextStyle(
                    color: ColorOfApp.textBold,
                    fontSize: Get.width * 0.1,
                    fontFamily: 'Oswald'),
              ),
            ),
    );
  }

  Widget professionOfDeveloper() {
    return isHeightBigger()
        ? Center(
            child: AutoSizeText(
              HomeScreenData.role,
              maxLines: 1,
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Merriweather',
                  color: ColorOfApp.textLight),
            ),
          )
        : Center(
            child: AutoSizeText(
              HomeScreenData.role,
              maxLines: 1,
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Merriweather',
                  color: ColorOfApp.textLight),
            ),
          );
  }

  Widget aboutText() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: MyMotionWidget(
        child: Card(
          color: ColorOfApp.background.withOpacity(0.2),
          shadowColor: ColorOfApp.cardShadow.withOpacity(0.7),
          elevation: 120,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                heading(heading: 'About', paddingTop: 0, paddingBottom: 20),
                Text(
                  HomeScreenData.discription_short,
                  style: const TextStyle(color: ColorOfApp.textLight),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget socialMedia() {
    // --Buttons Logic--
    Widget AppButton(
        {required String Assetname,
        required Function fun,
        String iconData = ''}) {
      return Center(
        child: Row(
          children: [
            Card(
              color: ColorOfApp.card,
              elevation: 5,
              shadowColor: ColorOfApp.cardShadow,
              child: SizedBox(
                width: Get.width * 0.13,
                height: Get.width * 0.13,
                child: IconButton(
                  onPressed: () {
                    fun();
                  },
                  icon: Image.asset(Assetname),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.053,
            )
          ],
        ),
      );
    }

    Widget AppButtonIcon({required IconData Iconname, required Function fun}) {
      return Center(
        child: Row(
          children: [
            Card(
              color: ColorOfApp.card,
              elevation: 5,
              shadowColor: ColorOfApp.cardShadow,
              child: SizedBox(
                width: Get.width * 0.13,
                height: Get.width * 0.13,
                child: IconButton(
                  onPressed: () {
                    fun();
                  },
                  icon: Transform.scale(
                      scale: 1.7,
                      child: Icon(
                        Iconname,
                        color: ColorOfApp.homeIconColor,
                      )),
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.03,
            )
          ],
        ),
      );
    }

    return padding_between_element(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Row(
          children: [
            AppButton(
              Assetname: AppAssets.iconWebsite,
              fun: HomeScreenLogic.openWebsite,
            ),
            AppButton(
              Assetname: AppAssets.iconLinkedin,
              fun: HomeScreenLogic.openLinkedin,
            ),
            AppButton(
              Assetname: AppAssets.iconGithub,
              fun: HomeScreenLogic.openGithub,
            ),
            AppButtonIcon(
              Iconname: MdiIcons.googlePlay,
              fun: HomeScreenLogic.openGooglePlay,
            ),
            AppButtonIcon(
              Iconname: MdiIcons.gmail,
              fun: HomeScreenLogic.openGmail,
            ),
          ],
        ),
      ),
    );
  }

  Widget skillText() {
    return StatefulBuilder(
      builder: (context, setState) {
        return Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                heading(heading: 'Skills', paddingTop: 0, paddingBottom: 40),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // number of items in each row
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0, // spacing between columns
                  ),
                  itemCount: HomeScreenData.skills.length, // Number of items in the map
                  itemBuilder: (context, index) {
                    // Get the key for the current index
                    final key = HomeScreenData.skills.keys.elementAt(index);

                    // Access the skill data using the key
                    final skillData = HomeScreenData.skills[key]!;

                    return Column(
                      children: [
                        CircularPercentIndicator(
                          animation: true,
                          animationDuration: 6000,
                          radius: MediaQuery.of(context).size.width / 6.2,
                          lineWidth: 10,
                          percent: skillData[1],
                          progressColor: ColorOfApp.homeSkillActive,
                          backgroundColor: ColorOfApp.homeSkillUnachieve,
                          circularStrokeCap: CircularStrokeCap.square,
                        ),
                        const SizedBox(height: 10),
                        AutoSizeText(
                          skillData[0],
                          maxLines: 1,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            fontFamily: 'OpenSans',
                            color: ColorOfApp.textBold,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        );
      }
    );
  }


  Widget contactMe() {
    return MyMotionWidget(
      child: Card(
        color: ColorOfApp.background.withOpacity(0.1),
        elevation: 150,
        shadowColor: ColorOfApp.cardShadow,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              heading(heading: 'Contact', fontSize: 40),
              Text(
                HomeScreenData.contactDescription,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  fontFamily: 'OpenSans',
                  color: ColorOfApp.textLight,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialProfileSelf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        heading(heading: 'Social Profile', fontSize: 30),
        MyMotionWidget(
          child: Container(
              height: Get.height * 0.35,
              padding: const EdgeInsets.all(38),
              child: AnimatedStackWidget(
                itemCount: HomeScreenData.socialLink.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    switch (index) {
                      case 0:
                        HomeScreenLogic.openWebsite();
                        break;
                      case 1:
                        HomeScreenLogic.openGithub();
                        break;
                      case 2:
                        HomeScreenLogic.openLinkedin();
                        break;
                      case 3:
                        HomeScreenLogic.openGooglePlay();
                        break;
                      case 4:
                        HomeScreenLogic.openGmail();
                        break;
                    }
                  },
                  child: MagazineCoverImage(
                    image: HomeScreenData.socialLink[index]![0],
                  ),
                ),
              )),
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
