import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import '../../../res/constants.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onTap;
  const MenuButton({super.key, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        TweenAnimationBuilder(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 200),
          builder: (context, value, child) {
            return InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(20),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: bgColor,
                  ),
                  child: SizedBox(
                    height: defaultPadding * 2.0 * value,
                    width: defaultPadding * 2.0 * value,
                    child: Center(
                        child: ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                            colors: [secColor, secColor]).createShader(bounds);
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: defaultPadding * 1.2 * value,
                      ),
                    )),
                  ),
                ));
          },
        ),
        const Spacer(
          flex: 5,
        )
      ],
    );
  }
}
