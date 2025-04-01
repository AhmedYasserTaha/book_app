import 'package:bookly_app/core/widget/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
