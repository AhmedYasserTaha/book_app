import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_book_list_view.dart';
import 'package:bookly_app/feature/home/presentation/widget_books/books_action.dart';
import 'package:bookly_app/feature/home/presentation/widget_books/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomBookDetailsAppBar(),
              ),
              const Gap(50),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width * 0.5,
                child: const CustomListViewItem(),
              ),
              const Gap(30),
              const Text("The Jungle Book", style: Styles.textStyle30),
              const Gap(10),
              const Text("Rudyard Kilping", style: Styles.textStyle16),
              const Gap(10),
              // ignore: prefer_const_constructors
              BookRating(mainAxisAlignment: MainAxisAlignment.center),
              const Gap(40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: BooksAction(),
              ),
              const Gap(40),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text("Rudyard Kilping", style: Styles.textStyle18),
              ),
              const Gap(20),
              FeatureBookListView(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
