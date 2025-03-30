import 'package:bookly_app/feature/home/presentation/widget_books/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [CustomBookDetailsAppBar()]),
        ),
      ),
    );
  }
}
