import 'package:flutter_book_app/models/book.dart';

class BookResponse {
  int? totalItem;
  List<Book>? items;

  BookResponse({this.totalItem, this.items});

  factory BookResponse.fromJson(Map<String, dynamic> jsonData) {
    var bookResponse = BookResponse();
    bookResponse.totalItem = jsonData['totalItems'];
    bookResponse.items = [];
    for (var bookJson in (jsonData['items'] as List<dynamic>)) {
      var bookMap = bookJson as Map<String, dynamic>;
      bookResponse.items?.add(Book.fromJson(bookMap));
    }
    return bookResponse;
  }
}
