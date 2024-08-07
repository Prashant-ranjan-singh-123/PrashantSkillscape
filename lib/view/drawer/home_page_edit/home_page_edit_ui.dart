import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:prashant_potfolio/shared/global_widgets.dart';

import '../../../shared/app_asset.dart';
import '../../../shared/color.dart';
import '../../../shared/globalVar&Fun.dart';
import '../../bottom_nav_bar/home_page/about_me_screen_data.dart';
import '../../bottom_nav_bar/home_page/about_me_screen_logic.dart';


class HomePageEditUi extends StatelessWidget {
  HomePageEditUi({super.key});

  @override
  Widget build(BuildContext context) {
    print('Layout Build');
    return LayoutBuilder(
      builder: (context, snapshot) {
        return Scaffold(
          body: CommonUsedWidget.background(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width*0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      topImageWidget(),
                      nameOfDev(),
                      professionOfDeveloper(),
                      socialMedia(),
                      aboutText(),
                      skillText(),
                      contactMe(),
                      socialProfileSelf()
                      // experience()
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
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
      child: ElevatedButton(
        onPressed: () {  },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent
        ),

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
    );
  }


  Widget nameOfDev() {
    String defaultName = HomeScreenData.name; // Default name value
    bool isEditing = false;
    TextEditingController _controller = TextEditingController(text: defaultName);

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return padding_between_element(
          child: GestureDetector(
            onTap: () {
              if (!isEditing) {
                setState(() {
                  isEditing = true;
                });
              }
            },
            onLongPress: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tap once to edit the name')),
              );
            },
            child: isEditing
                ? Center(
              child: TextField(
                controller: _controller,
                style: TextStyle(
                  color: ColorOfApp.textBold,
                  fontSize: Get.width * 0.1,
                  fontFamily: 'Oswald',
                ),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter new name',
                ),
                onSubmitted: (value) {
                  setState(() {
                    // Update HomeScreenData and local name
                    HomeScreenData.name = value.isNotEmpty ? value : defaultName;
                    defaultName = HomeScreenData.name;
                    _controller.text = defaultName; // Update controller text
                    isEditing = false;
                  });
                },
                autofocus: true,
              ),
            )
                : Center(
              child: AutoSizeText(
                defaultName,
                maxLines: 1,
                style: TextStyle(
                  color: ColorOfApp.textBold,
                  fontSize: Get.width * 0.1,
                  fontFamily: 'Oswald',
                ),
              ),
            ),
          ),
        );
      },
    );
  }



  Widget professionOfDeveloper() {
    String defaultProfession = HomeScreenData.role; // Default profession value
    bool isEditing = false;
    TextEditingController _controller = TextEditingController(text: defaultProfession);

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return GestureDetector(
          onTap: () {
            if (!isEditing) {
              setState(() {
                isEditing = true;
              });
            }
          },
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Tap once to edit the profession')),
            );
          },
          child: isEditing
              ? Center(
            child: TextField(
              controller: _controller,
              style: TextStyle(
                color: ColorOfApp.textLight, // Retained the original style color
                fontSize: Get.width * 0.05, // Adjust as needed
                fontFamily: 'Merriweather', // Retained the original font
              ),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Your Profession',
              ),
              onSubmitted: (value) {
                setState(() {
                  // Check if the value is empty and revert to the default value if so
                  HomeScreenData.role = value.isNotEmpty ? value : defaultProfession;
                  _controller.text = HomeScreenData.role; // Ensure the controller updates
                  isEditing = false;
                });
              },
              autofocus: true,
            ),
          )
              : Center(
            child: AutoSizeText(
              HomeScreenData.role,
              maxLines: 1,
              style: TextStyle(
                color: ColorOfApp.textLight, // Retained the original style color
                fontSize: 25, // Adjust as needed
                fontFamily: 'Merriweather', // Retained the original font
              ),
            ),
          ),
        );
      },
    );
  }


  Widget aboutText() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        // Initial description text from HomeScreenData
        String defaultDescription = HomeScreenData.discription_short;
        TextEditingController _controller = TextEditingController(text: defaultDescription);
        bool isEditing = false;

        // Widget to build the UI when not editing
        Widget buildAboutTextUi(){
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(
              color: ColorOfApp.card,
              shadowColor: ColorOfApp.cardShadow,
              elevation: 30,
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
          );
        }

        // Widget to build the dialog for editing the text
        Widget aboutTextEditWidget() {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            titlePadding: EdgeInsets.only(top: 15),
            contentPadding: EdgeInsets.only(bottom: 15),
            backgroundColor: ColorOfApp.card,
            shadowColor: ColorOfApp.cardShadow,
            
            elevation: 50,
            scrollable: true,
            title: Center(
              child: Text(
                'About',
                maxLines: 1,
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: ColorOfApp.textBold,
                ),
              ),
            ),
            content: Container(
              color: ColorOfApp.card, // Match the card color from buildAboutTextUi
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter new description',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: ColorOfApp.card, // Match the card color
                    ),
                    maxLines: 10,
                    style: TextStyle(
                      color: ColorOfApp.textLight, // Match the text color from buildAboutTextUi
                      fontSize: 15
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Get.back(); // Close the dialog
                          },
                          child: Text('Cancel', style: TextStyle(color: Colors.red, fontFamily: 'OpenSans', fontSize: 20)),
                        ),
                        SizedBox(width: 15,),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              // Update HomeScreenData and local description if not empty
                              if (_controller.text.isNotEmpty) {
                                HomeScreenData.discription_short = _controller.text;
                                defaultDescription = _controller.text; // Update local variable
                              }
                            });
                            Get.back(); // Close the dialog
                          },
                          child: Text('Save', style: TextStyle(color: Colors.black, fontFamily: 'OpenSans', fontSize: 20),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorOfApp.bottomNavCard,
                            shadowColor: ColorOfApp.bottomNavCardShadow,
                            elevation: 15,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );;
        }

        // Main widget that toggles between viewing and editing modes
        return GestureDetector(
          onTap: () {
            if (!isEditing) {
              showDialog(
                context: context,
                barrierColor: ColorOfApp.background.withOpacity(0.9),
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return aboutTextEditWidget();
                },
              );
            }
          },
          child: buildAboutTextUi(),
        );
      },
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
            AppButton(
              Assetname: AppAssets.iconTelegram,
              fun: HomeScreenLogic.openTelegram,
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
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 6000,
                      radius: Get.width / 6.2,
                      lineWidth: 10,
                      percent: HomeScreenData.skills[index]![1],
                      progressColor: ColorOfApp.homeSkillActive,
                      backgroundColor: ColorOfApp.homeSkillUnachieve,
                      circularStrokeCap: CircularStrokeCap.square,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AutoSizeText(HomeScreenData.skills[index]![0],
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: 'OpenSans',
                          color: ColorOfApp.textBold,
                        ))
                  ],
                );
              },
              itemCount: HomeScreenData.skills.length,
            )
          ],
        ),
      ),
    );
  }

  Widget contactMe() {
    return Column(
      children: [
        heading(heading: 'Contact', fontSize: 40),
        const Text(
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
    );
  }

  Widget socialProfileSelf() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        heading(heading: 'Social Profile', fontSize: 30),
        Container(
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
                      HomeScreenLogic.openTelegram();
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
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}