import 'package:flutter/material.dart';

class BookshelvesView extends StatelessWidget {
  const BookshelvesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Bienvenue sur Bookshelves Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}