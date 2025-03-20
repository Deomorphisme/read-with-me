import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:read_with_me/viewmodels/landing_viewmodel.dart';
//import 'views/landing_view.dart';
import 'viewmodels/home_viewmodel.dart';
import 'views/home_view.dart';
import 'views/landing_view.dart';
//import 'views/library_view.dart';
//import 'views/bookshelves_view.dart';
//import 'views/wishlist_view.dart';
//import 'views/quotes_view.dart';
//import 'views/statistics_view.dart';
//import 'viewmodels/home_viewmodel.dart';
//import 'viewmodels/library_viewmodel.dart';
// ... importez les autres ViewModels

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(create: (context) => LandingViewModel()),
        // ... ajoutez les autres ViewModels
      ],
      child: MaterialApp(
        title: 'Read With Me',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/', // Page de démarrage
        routes: {
          '/': (context) => LandingView(),
          '/home': (context) => HomeView(),
          //'/library': (context) => LibraryView(),
          //'/bookshelves': (context) => BookshelvesView(),
          //'/wishlist': (context) => WishlistView(),
          //'/quotes': (context) => QuotesView(),
          //'/statistics': (context) => StatisticsView(),
        },
      ),
    );
  }
}