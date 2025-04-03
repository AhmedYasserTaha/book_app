import 'package:bookly_app/feature/home/domain/repo/home_repo.dart';

class FetchFeatruedBookUseCase extends UseCase {
  final HomeRepo homeRepo;

  @override
  Future call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}

abstract class UseCase {
  Future call();
}
