import 'package:flutter/material.dart';

import '../../contains/style.dart';
import 'icon_button_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int buttonNav = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultSpacing, horizontal: kDefaultSpacing * 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(kBorder),
        ),
        color: kOverlaySideBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButtonNavBar(
            press: () {
              setState(() {
                buttonNav = 1;
              });
            },
            check: buttonNav == 1 ? true : false,
            icon: "assets/icons/group.svg",
          ),
          IconButtonNavBar(
            press: () {
              setState(() {
                buttonNav = 2;
              });
            },
            check: buttonNav == 2 ? true : false,
            icon: "assets/icons/home.svg",
          ),
          IconButtonNavBar(
            press: () {
              setState(() {
                buttonNav = 3;
              });
            },
            check: buttonNav == 3 ? true : false,
            icon: "assets/icons/notify.svg",
          ),
          IconButtonNavBar(
            press: () {
              setState(() {
                buttonNav = 4;
              });
            },
            check: buttonNav == 4 ? true : false,
            iconPNG: "assets/images/Perfil2 1.png",
          )
        ],
      ),
    );
  }
}
