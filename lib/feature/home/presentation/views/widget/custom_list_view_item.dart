import 'package:bookly_app/core/utils/assets_deta.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.red,
        image: const DecorationImage(
          image: AssetImage(AssetsDeta.testImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
