import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundFilter extends StatelessWidget {
  const BackgroundFilter({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation((179.98 % 360) * (pi / 180)),
                stops: [0.0063, 0.3292],
                colors: [
                  Color.fromRGBO(8, 11, 22, 0.6),
                  Color.fromRGBO(8, 11, 22, 0),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 1.0],
                transform: GradientRotation((180 % 360) * (pi / 180)),
                colors: [
                  Color.fromRGBO(8, 11, 22, 0),
                  Color.fromRGBO(8, 11, 22, 0.5),
                ],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(8, 11, 22, 0.5),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 52, sigmaY: 52),
              child: Container(
                color: Colors.transparent, // Màu nền trong suốt
              ),
            ),
          ),
        ],
      ),
    );
  }
}
