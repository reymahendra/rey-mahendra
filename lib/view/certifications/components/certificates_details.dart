import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../model/certificate_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/certification_controller.dart';

class CertificateStack extends StatelessWidget {
  final controller = Get.put(CertificationController());
  CertificateStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
        depth: 8,
        lightSource: LightSource.topLeft,
        color: bgColor,
      ),
      child: InkWell(
        onHover: (value) {
          controller.onHover(index, value);
        },
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        child: AnimatedContainer(
            padding: const EdgeInsets.all(defaultPadding),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: bgColor),
            duration: const Duration(milliseconds: 500),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    certificateList[index].name,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        certificateList[index].organization,
                        style: const TextStyle(color: secColor),
                      ),
                      Text(
                        certificateList[index].date,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Text.rich(
                    maxLines: 1,
                    TextSpan(
                        text: 'Skills : ',
                        style: const TextStyle(
                          color: priColor,
                        ),
                        children: [
                          TextSpan(
                            text: certificateList[index].skills,
                            style: const TextStyle(
                                color: Colors.black,
                                overflow: TextOverflow.ellipsis),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(certificateList[index].credential));
                      },
                      child: Neumorphic()),
                ],
              ),
            )),
      ),
    );
  }
}
