import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
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
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(7),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.greyColor,
            ),
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColors.blackColor,
              size: 22,
            ),
          ),
        ),
      ],
    );
  }
}
