import "package:flutter/material.dart";

import "../../../../Constants.dart";
import "../../../../Core/AppColors.dart";

class ImageModel extends StatelessWidget {
  const ImageModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/image.png",
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          decoration: BoxDecoration(
            color: AppColors.blueColor,
            borderRadius: kBorderRad10,
          ),
          child: Text(
            "Category",
            style: TextStyle(color: AppColors.whiteColor),
          ),
        ),
      ],
    );
  }
}
