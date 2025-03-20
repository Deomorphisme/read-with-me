import 'package:flutter/material.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Bienvenue sur Wishlist Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}