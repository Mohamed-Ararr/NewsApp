import "package:flutter/material.dart";

import "../../../../Constants.dart";
import "../../../../Core/AppColors.dart";

class ImageModel extends StatelessWidget {
  const ImageModel({super.key, required this.imageUrl});

  final String? imageUrl;
  final String empty =
      "https://www.generationsforpeace.org/wp-content/uploads/2018/03/empty.jpg";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Image.network(
            imageUrl ?? empty,
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
      ),
    );
  }
}
