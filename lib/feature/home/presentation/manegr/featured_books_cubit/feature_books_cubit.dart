import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:bookly_app/feature/home/domain/usecase/fetch_featrued_book_use_case.dart';
import 'package:flutter/widgets.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.featruedBookUseCase) : super(FeatureBooksInitial());

  final FetchFeatruedBookUseCase featruedBookUseCase;

  Future<void> fetchFteaturedBooks() async {
    emit(FeatureBooksLoading());

    var result = await featruedBookUseCase.call();

    result.fold(
      (failure) {
        emit(FeatureBooksFailure(failure.errMessage));
      },
      (books) {
        FeatureBooksSuccess(books);
      },
    );
  }
}
