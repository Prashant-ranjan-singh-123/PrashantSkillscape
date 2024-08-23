import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

class MyMotionWidget extends StatelessWidget {
  int elevation;
  Widget child;
  double borderRadius;
  bool glare;
  bool translation;
  MyMotionWidget({super.key, required this.child, this.elevation = 8, this.borderRadius=20, this.glare=false, this.translation=false});

  @override
  Widget build(BuildContext context) {
    return Motion.elevated(
        elevation: elevation,
        shadow: false,
        translation: translation,
        glare: glare,
        filterQuality: FilterQuality.high,
        borderRadius: BorderRadius.circular(borderRadius),
        child: child);
  }
}
