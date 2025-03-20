import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/colour.dart';
import '../../utils/fonts_styles.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.title,
    required this.color,
    required this.iconPath,
    this.iconSize,
    this.number,
  });
  final String title;
  final Color color;
  final String iconPath;
  final double? iconSize;
  final int? number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 170,
      decoration: color == white
          ? BoxDecoration(
              color: color,
              backgroundBlendMode: BlendMode.multiply,
              borderRadius: BorderRadius.circular(32),
            )
          : BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(32),
            ),
      //padding: EdgeInsets.all(20),
      child: Stack(children: [
        Positioned(
          top: 20,
          right: 20,
          child: SvgPicture.asset(
            iconPath,
            width: iconSize ?? 24, // Largeur du SVG
            height: iconSize ?? 24, // Hauteur du SVG
            colorFilter:
                ColorFilter.mode(white, BlendMode.srcIn), // Changer la couleur
          ),
        ),
        Positioned(
          left: 20,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (number != null) Text("$number", style: body(white, "medium")),
              if (number != null) SizedBox(height: 0),
              Text(title, style: small200(white, "regular")),
            ],
          ),
        ),
      ]),
    );
  }
}

class CenteredHomeCard extends StatelessWidget {
  const CenteredHomeCard({
    super.key,
    required this.color,
    required this.iconPath,
    this.iconSize,
    required this.number,
  });
  final Color color;
  final String iconPath;
  final double? iconSize;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 170,
      decoration: color == white
          ? BoxDecoration(
              color: color,
              backgroundBlendMode: BlendMode.multiply,
              borderRadius: BorderRadius.circular(32),
            )
          : BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(32),
            ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath,
            width: iconSize ?? 24,
            height: iconSize ?? 24,
            colorFilter: ColorFilter.mode(white, BlendMode.srcIn),
          ),
          SizedBox(
            height: 8,
          ),
          Text("$number", style: body(white, "regular")),
        ],
      ),
    );
  }
}
