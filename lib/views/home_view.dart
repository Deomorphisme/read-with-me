import 'package:flutter/material.dart';
import 'package:read_with_me/widgets/home/book_card.dart';
import '../widgets/home/gridview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/desert.jpeg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  bottom: false,
                  minimum: EdgeInsets.symmetric(horizontal: 24),
                  child: GridViewList(),
                ),
                BookCard()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
