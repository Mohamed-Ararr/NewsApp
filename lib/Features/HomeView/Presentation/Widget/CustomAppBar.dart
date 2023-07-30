import "package:flutter/material.dart";
import "package:newsapp/Core/AppFonts.dart";

import "../../../../Core/AppColors.dart";

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "News App",
          style: AppFonts.appTitleBlack20,
        ),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.greyColor,
          ),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.search_rounded,
              color: AppColors.blackColor,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
