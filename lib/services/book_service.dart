import '../models/book.dart';

class BookService {
  static Future<List<Book>> getFeaturedBooks() async {
    // Logique pour récupérer les livres depuis une API ou une base de données
    // ...
    return [
      Book(title: 'Livre 1', author: 'Auteur 1'),
      Book(title: 'Livre 2', author: 'Auteur 2'),
    ];
  }
}