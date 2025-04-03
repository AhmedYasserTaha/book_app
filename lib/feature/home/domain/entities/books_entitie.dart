class BooksEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? authorName;
  final num? price;
  final num? rating;

  BooksEntity({
    required this.bookId,
    required this.image,
    required this.title,
    required this.price,
    required this.rating,
    required this.authorName,
  });
}
