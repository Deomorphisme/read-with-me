import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/book_service.dart';

class HomeViewModel extends ChangeNotifier {
  List<Book> _featuredBooks = [];
  List<Book> get featuredBooks => _featuredBooks;
  Future<void> loadFeaturedBooks() async {
    // Logique pour récupérer les livres populaires
    _featuredBooks = await BookService.getFeaturedBooks();
    notifyListeners();
  }
}