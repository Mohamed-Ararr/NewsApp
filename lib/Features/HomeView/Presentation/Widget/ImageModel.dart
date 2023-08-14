import "package:cached_network_image/cached_network_image.dart";
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
          CachedNetworkImage(
            imageUrl: imageUrl ?? empty,
            placeholder: (context, url) => const CircularProgressIndicator(),
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
