import 'package:flutter/material.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Bienvenue sur Quotes Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}