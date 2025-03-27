import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';

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
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: BestSellerLsitViewItem(),
          ),
        ],
      ),
    );
  }
}
