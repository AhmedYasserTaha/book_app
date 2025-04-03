import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_case/use_case.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:bookly_app/feature/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFNewsBooksUseCase extends UseCase<List<BooksEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFNewsBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BooksEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchNewsBooks();
  }
}
