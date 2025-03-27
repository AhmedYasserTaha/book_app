import 'package:bookly_app/feature/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/widgets.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViewItem(),
          );
        },
      ),
    );
  }
}
