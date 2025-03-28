import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/feature/home/presentation/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureBookListView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                child: Text("Best Seller", style: Styles.textStyle18),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: const BestSellerLsitViewItem(),
          );
        },
      ),
    );
  }
}
