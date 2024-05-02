abstract class AppLink {
  static const String baseUrl = 'https://www.googleapis.com/';
  static const String books = 'books/v1/volumes';

  static String getBooks(String query) => '$baseUrl$books?q=$query';

  static String getNewsBook =
      '$baseUrl$books/?Filtering=free-ebooks&Sorting=newest&q=programing';

  static String getBestSellerBook =
      '$baseUrl$books/?Filtering=free-ebooks&Sorting=bestSeller&q=programing';
}

//https://www.googleapis.com/books/v1/volumes?q=programing

//  ?Filtering=free-ebooks&Sorting=newest&q=subject&0programing
