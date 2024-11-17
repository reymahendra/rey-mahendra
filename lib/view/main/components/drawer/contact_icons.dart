import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          Neumorphic(
            style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
        depth: 8,
        lightSource: LightSource.topLeft,
        color: bgColor,
      ),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://www.linkedin.com/in/rey-mahendra-0894b9322/'));
              },
              icon: SvgPicture.asset(
                'assets/icons/linkedin.svg',
                // ignore: deprecated_member_use
                color: Colors.black,
              )),
          ),
          
          Neumorphic(
            margin:EdgeInsets.fromLTRB(defaultPadding, 0, 0, 0) ,
            style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
        depth: 8,
        lightSource: LightSource.topLeft,
        color: bgColor,
      ),
            child: IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/reymahendra'));
              },
              icon: SvgPicture.asset('assets/icons/github.svg',
                  // ignore: deprecated_member_use
                  color: Colors.black)),
          ),
          
          const Spacer(),
        ],
      ),
    );
  }
}
