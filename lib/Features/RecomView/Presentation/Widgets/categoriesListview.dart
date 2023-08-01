import "package:flutter/material.dart";

import "../../../../Constants.dart";
import "../../../../Core/AppColors.dart";

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.only(right: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: kBorderRad10,
        color: index == 0 ? AppColors.lightBlueColor : AppColors.greyColor,
      ),
      child: Text(
        "hello",
        style: TextStyle(
          fontSize: 13,
          color: index == 0 ? AppColors.whiteColor : Colors.black38,
        ),
      ),
    );
  }
}
