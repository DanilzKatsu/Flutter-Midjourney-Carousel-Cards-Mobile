import 'dart:ui';

import 'package:flutter/material.dart';

import '../../contains/style.dart';

class ImageCard2 extends StatefulWidget {
  const ImageCard2({
    super.key,
    required this.image,
  });
  final String image;

  @override
  State<ImageCard2> createState() => _ImageCard2State();
}

class _ImageCard2State extends State<ImageCard2> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      height: check ? 491 : 309,
      width: check ? 276 : 231,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            bottom: check ? 0 : 8,
            left: check ? 0 : 1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              height: check ? 296 : 116,
              width: check ? 270 : 220,
              decoration: const BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(kBorder),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultSpacing * 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "/v5_upscale",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kOrangeColor,
                          ),
                        ),
                        Text(
                          "19 hrs ago",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: kGreyColor,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Fashion photography of a anthropomorphic giraffe dressed in large hiphop clothes from 1980",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
            top: 0,
            left: 0,
            right: 0,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    check ? check = false : check = true;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      height: check ? 370 : 309,
                      width: check ? 252 : 231,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(kBorder),
                        ),
                        image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: check
                          ? Container()
                          : BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                              child: Container(
                                color: Colors.black.withOpacity(0),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
