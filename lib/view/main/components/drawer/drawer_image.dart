import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

import '../../../../res/constants.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
          depth: 8,
          lightSource: LightSource.topLeft,
        ),
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(defaultPadding / 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: secColor,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/images/profile.jpg',
                fit: BoxFit.cover,
              )),
        ));
  }
}
