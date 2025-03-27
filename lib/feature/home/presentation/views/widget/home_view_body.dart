import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/core/utils/assets_deta.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerLsitViewItem(),
          ),
        ],
      ),
    );
  }
}

class BestSellerLsitViewItem extends StatelessWidget {
  const BestSellerLsitViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.red,
                image: const DecorationImage(
                  image: AssetImage(AssetsDeta.testImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  child: const Text(
                    "Harry Potter\nand the Goblet of Fire",
                    style: Styles.textStyle20,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
