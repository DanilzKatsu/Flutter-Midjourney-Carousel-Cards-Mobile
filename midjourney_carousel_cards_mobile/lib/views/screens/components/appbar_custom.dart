import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../contains/style.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            "assets/icons/Midjourney.svg",
            height: 18,
            width: 97,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/icons/menu.svg",
                height: 20,
                width: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
