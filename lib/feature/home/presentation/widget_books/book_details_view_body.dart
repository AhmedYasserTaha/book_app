import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/core/widget/custom_button_widget.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/widget_books/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

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
              const Gap(30),
              const Text("The Jungle Book", style: Styles.textStyle30),
              const Gap(10),
              const Text("Rudyard Kilping", style: Styles.textStyle16),
              const Gap(10),
              // ignore: prefer_const_constructors
              BookRating(mainAxisAlignment: MainAxisAlignment.center),
              const Gap(40),
              const Row(
                children: [
                  Expanded(
                    child: CustomButtonWidget(
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      textTilte: "19.99\$",
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomButtonWidget(
                      backgroundColor: Color(0xffEF8262),
                      textColor: Colors.white,
                      textTilte: "Free Preview",
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
