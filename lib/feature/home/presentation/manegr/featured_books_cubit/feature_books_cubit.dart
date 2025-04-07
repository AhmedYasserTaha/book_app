import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/domain/entities/books_entitie.dart';
import 'package:meta/meta.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit() : super(FeatureBooksInitial());
}
