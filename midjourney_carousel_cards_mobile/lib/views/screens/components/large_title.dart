import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../contains/style.dart';

class LargeTitle extends StatelessWidget {
  const LargeTitle({
    super.key,
    required this.height,
    required this.width,
  });
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing * 3),
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(microseconds: 500),
            height: height,
            width: width,
            child: SvgPicture.asset(
              "assets/icons/Community Showcase.svg",
            ),
          ),
        ],
      ),
    );
  }
}
