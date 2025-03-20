import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/colour.dart';
import '../../utils/fonts_styles.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        height: (screenWidth - 70),
        margin: EdgeInsets.only(top: 15, left: 24, right: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Un coeur faible", style: body(black, "medium")),
                  Text("Fedor Dostoievski", style: small200(black, "regular")),
                  Text("Last book", style: small100(orange, "regular")),
                ],
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                height: 44,
                width: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100), color: gray100),
                child: SvgPicture.asset(
                  "assets/icons/fullscreen.svg",
                  width: 24,
                  height: 24,
                  colorFilter: ColorFilter.mode(
                      gray200, BlendMode.srcIn), // Changer la couleur
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 150,
                  height: 150 * 1.636,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/book_cover.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(32),
                          topLeft: Radius.circular(32))),
                )),
            Positioned(
              bottom: 30,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("45 of 79 pages", style: small100(gray400, "regular")),
                  Text("34 pages left", style: small100(gray300, "light")),
                ],
              ),
            ),
          ],
        ));
  }
}
