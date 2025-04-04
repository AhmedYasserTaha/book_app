import 'package:hive/hive.dart'; // استخدم hive بدل hive_flutter هنا
part 'books_entitie.g.dart';

@HiveType(typeId: 0)
class BooksEntity extends HiveObject {
  // أضفت HiveObject للوراثة
  @HiveField(0)
  final String bookId;

  @HiveField(1)
  final String? image;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String? authorName;

  @HiveField(4)
  final num? price;

  @HiveField(5)
  final num? rating;

  BooksEntity({
    required this.bookId,
    this.image, // غيرت required لأنه nullable
    required this.title,
    this.authorName, // غيرت required لأنه nullable
    this.price, // غيرت required لأنه nullable
    this.rating, // غيرت required لأنه nullable
  });
}
