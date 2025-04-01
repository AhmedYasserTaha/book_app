import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:bookly_app/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeatruedBookUseCase {
  final HomeRepo homeRepo;

  FetchFeatruedBookUseCase({required this.homeRepo});

  Future<Either<Failure, List<BooksEntity>>> fetchFteaturedBooks() {
    return homeRepo.fetchFteaturedBooks();
  }
}
