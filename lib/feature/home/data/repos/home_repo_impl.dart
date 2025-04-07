import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/feature/home/data/data_source/home_local_data_source.dart';
import 'package:bookly_app/feature/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:bookly_app/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<Failure, List<BooksEntity>>> fetchFteaturedBooks() async {
    try {
      var bookList = await homeLocalDataSource.fetchFteaturedBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      }

      var books = await homeRemoteDataSource.fetchFteaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksEntity>>> fetchNewsBooks() async {
    try {
      var bookList = await homeLocalDataSource.fetchNewsBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      }

      var books = await homeRemoteDataSource.fetchNewsBooks();
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
