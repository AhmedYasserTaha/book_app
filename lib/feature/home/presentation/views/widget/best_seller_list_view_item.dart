import 'package:bookly_app/core/constant/style.dart';
import 'package:bookly_app/core/utils/assets_deta.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .55,
                    child: const Text(
                      "Harry Potter\nand the Goblet of Fire",
                      style: Styles.textStyle20,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    "J.K. Rowling",
                    style: Styles.textStyle14.copyWith(
                      color: const Color(0xff707070),
                    ),
                  ),
                  const Gap(4),

                  const Row(
                    children: [
                      Text("19.99 \$", style: Styles.textStyle20),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amberAccent),
        const Text("4.8", style: Styles.textStyle16),
        const Gap(5),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
