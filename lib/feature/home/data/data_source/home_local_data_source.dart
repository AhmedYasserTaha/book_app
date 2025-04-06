import 'package:bookly_app/core/constant/constants.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeRemoteDataSource {
  Future<List<BooksEntity>> fetchFteaturedBooks();
  Future<List<BooksEntity>> fetchNewsBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BooksEntity>> fetchFteaturedBooks() async {
    var box = Hive.box<BooksEntity>(kFeaturedBooks);
    return box.values.toList();
  }

  @override
  Future<List<BooksEntity>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}
