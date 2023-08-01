import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "AppColors.dart";

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(7),
      onTap: () => GoRouter.of(context).pop(),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.greyColor,
        ),
        child: const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}
