import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBookListView(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Text("Best Seller", style: Styles.textStyle18),
          ),
          BestSellerLsitViewItem(),
        ],
      ),
    );
  }
}

class BestSellerLsitViewItem extends StatelessWidget {
  const BestSellerLsitViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Image.asset("assets/images/Book 3 Hightligh.png"),
        ),
        // Gap(30),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Harry Potter\nand the Goblet of Fire",
              style: Styles.textStyle18,
            ),
            Text("J.K. Rowling", style: Styles.textStyle14),
            // Text("Best Seller", style: Styles.textStyle14),
            Row(
              children: [
                Text("19.99 €", style: Styles.textStyle18),
                Gap(50),
                Icon(Icons.star, color: Colors.amberAccent),
                Text("4.5", style: Styles.textStyle18),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
