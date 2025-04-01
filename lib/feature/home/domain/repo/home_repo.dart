import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksEntitie>>> fetchFteaturedBooks();
  Future<Either<Failure, List<BooksEntitie>>> fetchNewsBooks();
}
