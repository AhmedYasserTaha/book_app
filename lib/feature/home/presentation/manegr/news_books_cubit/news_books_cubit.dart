import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:bookly_app/feature/home/domain/usecase/fetch_nwes_books_use_case.dart';
import 'package:flutter/widgets.dart';

part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.fetchFNewsBooksUseCase) : super(NewsBooksInitial());

  final FetchFNewsBooksUseCase fetchFNewsBooksUseCase;

  Future<void> fetchNewsBooks() async {
    emit(NewsBooksLoading());

    var result = await fetchFNewsBooksUseCase.call();

    result.fold(
      (failure) {
        emit(NewsBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewsBooksSuccess(books));
      },
    );
  }
}
