import 'package:bookly_app/feature/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/widget_books/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const Gap(50),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.5,
                child: const CustomListViewItem(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
