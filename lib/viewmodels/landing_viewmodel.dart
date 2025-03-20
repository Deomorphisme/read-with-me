import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingViewModel extends ChangeNotifier {
  Future<void> navigateToHome(BuildContext context) async {
    // Vérifier si l'utilisateur a déjà vu la page d'accueil
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasSeenHome = prefs.getBool('hasSeenHome') ?? false;

    if (hasSeenHome) {
      // Naviguer directement vers la page d'accueil
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Marquer la page d'accueil comme vue et naviguer
      await prefs.setBool('hasSeenHome', true);
      Navigator.pushReplacementNamed(context, '/home');
    }
  }
}