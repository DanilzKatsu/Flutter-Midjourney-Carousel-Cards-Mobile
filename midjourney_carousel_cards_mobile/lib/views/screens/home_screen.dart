// ignore: non_constant_identifier_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:midjourney_carousel_cards_mobile/views/contains/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  bool choosed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: Stack(
            children: [
              CarouselSlider.builder(
                  options: CarouselOptions(
                    height: double.infinity,
                    autoPlay: false,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 2),
                  ),
                  itemCount: list_image.length,
                  itemBuilder: (context, index, realIndex) {
                    return BackgroundFilter(image: list_image[activeIndex]);
                  }),
              Positioned(
                top: 600,
                left: 156,
                child: Container(
                  padding: EdgeInsets.only(bottom: 30),
                  height: 0,
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: list_image.length,
                    effect: ExpandingDotsEffect(
                      spacing: 12,
                      // jumpScale: 2,
                      dotHeight: 11,
                      dotWidth: 11,
                      dotColor: kGreyColor.withOpacity(0.6),
                      activeDotColor: kWhiteColor.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: kDefaultSpacing * 5 + 4),
                  const AppBarCustom(),
                  const SizedBox(height: kDefaultSpacing * 5 / 2),
                  const LargeTitle(
                    height: 62,
                    width: 206,
                  ),
                  CarouselSlider.builder(
                      options: CarouselOptions(
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                          height: 557,
                          autoPlay: false,
                          viewportFraction: 0.69,
                          autoPlayInterval: const Duration(seconds: 2),
                          enlargeCenterPage: true),
                      itemCount: list_image.length,
                      itemBuilder: (context, index, realIndex) {
                        return Center(
                          child: ImageCard(
                            image: list_image[index],
                            choose: activeIndex == index ? true : false,
                          ),
                        );
                      }),
                  const BottomNavBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
