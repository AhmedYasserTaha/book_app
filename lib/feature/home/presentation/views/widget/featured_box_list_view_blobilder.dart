import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/feature/home/presentation/manegr/featured_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBlocBulider extends StatelessWidget {
  const FeaturedBooksListViewBlocBulider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return FeatureBookListView(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.25,
          );
        } else if (state is FeatureBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
