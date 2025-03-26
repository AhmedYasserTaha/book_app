import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Row(
        children: [
          Image.asset("assets/images/logo.png", height: 17, width: 75),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/search.png", height: 25, width: 25),
          ),
        ],
      ),
    );
  }
}
