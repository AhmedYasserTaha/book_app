import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';

abstract class HomeRemoteDataSource {
  Future<List<BooksEntity>> fetchFteaturedBooks();
  Future<List<BooksEntity>> fetchNewsBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BooksEntity>> fetchFteaturedBooks() {
    // TODO: implement fetchFteaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BooksEntity>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}
