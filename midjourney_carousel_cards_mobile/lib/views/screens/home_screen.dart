// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:midjourney_carousel_cards_mobile/views/contains/style.dart';

import '../components/background_filter.dart';
import 'components/appbar_custom.dart';
import 'components/bottom_nav_bar.dart';
import 'components/image_card.dart';
import 'components/large_title.dart';

// ignore: non_constant_identifier_names
var list_image = [
  "assets/images/pic1.png",
  "assets/images/pic2.png",
  "assets/images/pic3.png",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Stack(
            children: [
              BackgroundFilter(image: list_image[0]),
              Column(
                children: [
                  const SizedBox(height: kDefaultSpacing * 5 + 4),
                  const AppBarCustom(),
                  const SizedBox(height: kDefaultSpacing * 5 / 2),
                  const LargeTitle(
                    height: 62,
                    width: 206,
                  ),
                  Expanded(
                    child: Center(
                      child: ImageCard(image: list_image[0]),
                    ),
                  ),
                  const BottomNavBar(),
                  const SizedBox(height: kDefaultSpacing * 5)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
