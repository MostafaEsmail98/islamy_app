import 'package:flutter/material.dart';

import 'colors.dart';

class SperateLine extends StatelessWidget {
  SperateLine({super.key, required this.width,required this.height});

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child:
          DecoratedBox(decoration: BoxDecoration(color: KColors.kPrimaryColor)),
    );
  }
}
