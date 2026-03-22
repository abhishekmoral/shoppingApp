import 'package:flutter/material.dart';
import '../../../utils/constant/sizes.dart';

class UGridLayOut extends StatelessWidget {
  const UGridLayOut({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 288, // playlist mainAxis count
    required this.itemBuilder,
  });

  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext context, int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: USizes.gridViewSpacing,
        crossAxisSpacing: USizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
