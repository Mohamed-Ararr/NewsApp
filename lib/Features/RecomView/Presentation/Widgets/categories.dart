import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:newsapp/Data/Services/ApiService.dart";

import "../../../../Constants.dart";
import "../../../../Core/AppColors.dart";

class Categories extends StatelessWidget {
  const Categories({super.key, required this.index, this.width});

  final int index;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await ApiService(Dio()).get("dragon-ball");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        margin: const EdgeInsets.only(right: 8),
        alignment: Alignment.center,
        width: width,
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
      ),
    );
  }
}
