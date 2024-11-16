import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../res/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: NeumorphicButton(
        onPressed: () {
          launchUrl(Uri.parse(
              'https://drive.google.com/file/d/1FvZnxIeXPP5cwG1b4cmRLEZOUr6WuyXg/view?usp=drive_link'));
        },
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
          depth: 8,
          lightSource: LightSource.topLeft,
          color: bgColor,
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(FontAwesomeIcons.download, color: priColor),
            SizedBox(width: 8),
            Text(
              'Download CV',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
