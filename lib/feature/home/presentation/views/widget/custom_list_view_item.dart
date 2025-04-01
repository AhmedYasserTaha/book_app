import 'package:bookly_app/core/utils/assets_deta.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, this.width});
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.25,
      width: width,
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
