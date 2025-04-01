import 'package:bookly_app/feature/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:flutter/widgets.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key, this.height, this.width});
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViewItem(width: width),
          );
        },
      ),
    );
  }
}
