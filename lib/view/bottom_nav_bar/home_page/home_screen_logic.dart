import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:prashant_potfolio/view/bottom_nav_bar/home_page/home_screen_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';
import 'dart:ui';

class HomeScreenLogic {
  // -- To Open Linkedin Logic --
  static void openLinkedin() async {
    Future<bool> isLinkedInInstalled() async {
      Uri url = Uri.parse('linkedin://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = HomeScreenData.socialLink[2]![1];
    bool isInstalled = await isLinkedInInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(action: 'action_view', data: dt);
      await intent.launch();
    } else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  // -- To Open Github Logic --
  static void openGithub() async {
    Future<bool> isGithubInInstalled() async {
      Uri url = Uri.parse('github://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = HomeScreenData.socialLink[1]![1];
    bool isInstalled = await isGithubInInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(action: 'action_view', data: dt);
      await intent.launch();
    } else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  // -- To Open Telegram Logic --
  static void openTelegram() async {
    Future<bool> isTelegramInstalled() async {
      Uri url = Uri.parse('telegram://');
      if (await canLaunchUrl(url)) {
        return true;
      } else {
        return false;
      }
    }

    String dt = HomeScreenData.socialLink[3]![1];
    bool isInstalled = await isTelegramInstalled();
    if (isInstalled != false) {
      AndroidIntent intent = AndroidIntent(action: 'action_view', data: dt);
      await intent.launch();
    } else {
      Uri url = Uri.parse(dt);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  static Future<void> openGmail() async {
    print(HomeScreenData.socialLink[4]![1]);
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
      '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }
// ···
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: HomeScreenData.socialLink[4]![1],
      query: encodeQueryParameters(<String, String>{
        'subject': 'Inquiry About Your Flutter Portfolio',
      }),
    );
    launchUrl(emailLaunchUri);
  }


  // -- To Open Website Logic --
  static void openWebsite() async {
    String dt = HomeScreenData.socialLink[0]![1];
    Uri url = Uri.parse(dt);
    try {
      await launchUrl(url);
    }catch (e){
      throw 'Could not launch $url';
    }
  }
}








// All these Things are for home screen Last widget which display socials




class AnimatedStackWidget extends StatefulWidget {
  const AnimatedStackWidget({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.index = 0,
  });

  final Function(BuildContext context, int index) itemBuilder;
  final int itemCount;
  final int index;

  @override
  State<AnimatedStackWidget> createState() => _AnimatedStackWidgetState();
}

class _AnimatedStackWidgetState extends State<AnimatedStackWidget>
    with SingleTickerProviderStateMixin {
  final double defaultAngle18Degree = pi * 0.1;

  late AnimationController controller;
  late int index;

  SlideDirection slideDirection = SlideDirection.left;

  Offset getOffset(int stackIndex) {
    return {
      0: Offset(lerpDouble(0, -70, controller.value)!, 30),
      1: Offset(lerpDouble(-70, 70, controller.value)!, 30),
      2: const Offset(70, 30) * (1 - controller.value),
    }[stackIndex] ??
        Offset(
            MediaQuery.of(context).size.width *
                controller.value *
                (slideDirection == SlideDirection.left ? -1 : 1),
            0);
  }

  double getAngle(int stackIndex) =>
      {
        0: lerpDouble(0, -defaultAngle18Degree, controller.value),
        1: lerpDouble(
            -defaultAngle18Degree, defaultAngle18Degree, controller.value),
        2: lerpDouble(defaultAngle18Degree, 0, controller.value),
      }[stackIndex] ??
          0.0;

  double getScale(int stackIndex) =>
      {
        0: lerpDouble(0.6, 0.9, controller.value),
        1: lerpDouble(0.9, 0.95, controller.value),
        2: lerpDouble(0.95, 1, controller.value),
      }[stackIndex] ??
          1.0;

  void onSlideOut(SlideDirection direction) {
    slideDirection = direction;
    controller.forward();
  }

  void animationListener() {
    if (controller.isCompleted) {
      setState(() {
        if (widget.itemCount == ++index) {
          index = 0;
        }
      });
      controller.reset();
    }
  }

  @override
  void initState() {
    index = widget.index;
    controller =
    AnimationController(vsync: this, duration: kThemeAnimationDuration)
      ..addListener(animationListener);
    super.initState();
  }

  @override
  void dispose() {
    controller
      ..removeListener(animationListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          return Stack(
            children: List.generate(
              4,
                  (stackIndex) {
                final modIndex = (index + 3 - stackIndex) % widget.itemCount;
                return Transform.translate(
                  offset: getOffset(stackIndex),
                  child: Transform.scale(
                    scale: getScale(stackIndex),
                    child: Transform.rotate(
                      angle: getAngle(stackIndex),
                      child: DragWidget(
                        onSlideOut: onSlideOut,
                        isEnableDrag: stackIndex == 3,
                        child: widget.itemBuilder(context, modIndex),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}

enum SlideDirection { left, right }

class DragWidget extends StatefulWidget {
  const DragWidget(
      {super.key,
        required this.child,
        this.onSlideOut,
        this.onPressed,
        required this.isEnableDrag});

  final Widget child;
  final ValueChanged<SlideDirection>? onSlideOut;
  final VoidCallback? onPressed;
  final bool isEnableDrag;

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController restoreController;
  late Size screenSize;

  final _widgetKey = GlobalKey();
  Offset startOffset = Offset.zero;
  Offset panOffset = Offset.zero;

  Size size = Size.zero;
  double angle = 0;

  // To check if the card is slide
  bool itWasMadeSlide = false;

  double get outSizeLimit => size.width * 0.65;

  void onPanStart(DragStartDetails details) {
    if (!restoreController.isAnimating) {
      setState(() {
        startOffset = details.globalPosition;
      });
    }
  }

  void onPanUpdate(DragUpdateDetails details) {
    if (!restoreController.isAnimating) {
      setState(() {
        panOffset = details.globalPosition - startOffset;
        angle = currentAngle;
      });
    }
  }

  void onPanEnd(DragEndDetails details) {
    if (restoreController.isAnimating) {
      return;
    }
    final velocityX = details.velocity.pixelsPerSecond.dx;
    final positionX = currentPosition.dx;
    if (velocityX < -1000 || positionX < -outSizeLimit) {
      itWasMadeSlide = widget.onSlideOut != null;
      widget.onSlideOut?.call(SlideDirection.left);
    }
    if (velocityX > 1000 || positionX > (screenSize.width - outSizeLimit)) {
      itWasMadeSlide = widget.onSlideOut != null;
      widget.onSlideOut?.call(SlideDirection.right);
    }
    restoreController.forward();
  }

  void restoreAnimationListener() {
    if (restoreController.isCompleted) {
      restoreController.reset();
      panOffset = Offset.zero;
      itWasMadeSlide = false;
      angle = 0;
      setState(() {});
    }
  }

  Offset get currentPosition {
    final renderBox =
    _widgetKey.currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.localToGlobal(Offset.zero) ?? Offset.zero;
  }

  double get currentAngle {
    return currentPosition.dx < 0
        ? (pi * 0.2) * currentPosition.dx / size.width
        : currentPosition.dx + size.width > screenSize.width
        ? (pi * 0.2) *
        (currentPosition.dx + size.width - screenSize.width) /
        size.width
        : 0;
  }

  void getChildSize() {
    size =
        (_widgetKey.currentContext?.findRenderObject() as RenderBox?)?.size ??
            Size.zero;
  }

  @override
  void initState() {
    restoreController =
    AnimationController(vsync: this, duration: kThemeAnimationDuration)
      ..addListener(restoreAnimationListener);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      screenSize = MediaQuery.of(context).size;
      getChildSize();
    });
    super.initState();
  }

  @override
  void dispose() {
    restoreController
      ..removeListener(restoreAnimationListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final child = SizedBox(key: _widgetKey, child: widget.child);
    if (!widget.isEnableDrag) return child;
    return GestureDetector(
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      child: AnimatedBuilder(
        animation: restoreController,
        builder: (context, child) {
          final value = 1 - restoreController.value;
          return Transform.translate(
            offset: panOffset * value,
            child: Transform.rotate(
              angle: angle * (itWasMadeSlide ? 1 : value),
              child: child,
            ),
          );
        },
        child: child,
      ),
    );
  }
}



class MagazineCoverImage extends StatelessWidget {
  late String image;

  MagazineCoverImage({
    super.key,
    required this.image,
    this.height,
  });


  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
        height: height,
        child: AspectRatio(
          aspectRatio: 3/4,
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 40,
                  offset: Offset(-20, 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
