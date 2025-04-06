import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:bookly_app/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<BooksEntity>>> fetchFteaturedBooks() {
    // TODO: implement fetchFteaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BooksEntity>>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}
