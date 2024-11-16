import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '085183220920',),
        AreaInfoText(title: 'Email', text: 'reyMahndra@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@reymahendra'),
        AreaInfoText(title: 'Github', text: '@reymahendra'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: priColor),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
