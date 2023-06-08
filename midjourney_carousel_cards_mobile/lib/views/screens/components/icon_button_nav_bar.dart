import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../contains/style.dart';

class IconButtonNavBar extends StatelessWidget {
  const IconButtonNavBar({
    super.key,
    this.icon,
    required this.press,
    this.check = false,
    this.iconPNG,
  });

  final String? icon;
  final String? iconPNG;
  final VoidCallback press;
  final bool check;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: kDefaultSpacing * 4,
          height: kDefaultSpacing * 4,
          child: icon != null
              ? SvgPicture.asset(
                  icon!,
                  height: kDefaultSpacing * 2,
                  colorFilter: ColorFilter.mode(
                    check ? kBorderColorActive : kBorderColor,
                    BlendMode.srcIn,
                  ),
                )
              : Image.asset(
                  iconPNG!,
                  height: kDefaultSpacing * 2,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
