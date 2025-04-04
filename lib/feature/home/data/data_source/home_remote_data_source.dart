import 'package:bookly_app/core/constant/constants.dart';
import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeRemoteDataSource {
  Future<List<BooksEntity>> fetchFteaturedBooks();
  Future<List<BooksEntity>> fetchNewsBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BooksEntity>> fetchFteaturedBooks() async {
    var data = await apiService.get(
      endPoint: 'volumes?q=Programming&Filtering=free-ebooks&Sorting=newest',
    );
    List<BooksEntity> books = getBookList(data);

    saveData(books, kFeaturedBooks);

    return books;
  }

  @override
  Future<List<BooksEntity>> fetchNewsBooks() async {
    var data = await apiService.get(
      endPoint: 'volumes?q=Programming&Filtering=free-ebooks',
    );
    List<BooksEntity> books = getBookList(data);
    return books;
  }

  // ///////////////////////////////////////////////////////////////////////////////
  List<BooksEntity> getBookList(Map<String, dynamic> data) {
    List<BooksEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  void saveData(List<BooksEntity> books, String boxName) {
    var box = Hive.box(kFeaturedBooks);
    box.addAll(books);
  }
}
