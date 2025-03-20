import 'package:flutter/material.dart';
import '../../utils/constants/colour.dart';
import 'home_card.dart';

class GridViewList extends StatelessWidget {
  const GridViewList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            HomeCard(
                title: "Library",
                number: 28,
                iconPath: "assets/icons/book-icon.svg",
                color: gray200.withValues(alpha: .67)),
            SizedBox(
              width: 5,
            ),
            HomeCard(
                title: "Wishlist",
                number: 14,
                iconPath: "assets/icons/bookmark-solid-icon.svg",
                color: gray200.withValues(alpha: .67)),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            HomeCard(
                title: "Statistics",
                iconPath: "assets/icons/chart-icon.svg",
                color: orange),
            SizedBox(
              width: 5,
            ),
            HomeCard(
                title: "Quotes",
                iconPath: "assets/icons/chat-icon.svg",
                color: gray200.withValues(alpha: .67)),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: HomeCard(
                title: "Books I'm reading",
                number: 2,
                iconPath: "assets/icons/play-icon.svg",
                color: orange,
                iconSize: 30,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: CenteredHomeCard(
                  number: 8,
                  iconPath: "assets/icons/heart-icon.svg",
                  color: gray200.withValues(alpha: .67)),
            ),
          ],
        ),
      ],
    );
  }
}
