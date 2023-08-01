import "package:flutter/material.dart";

import "../../../../Core/AppColors.dart";

class TextSpeech extends StatelessWidget {
  const TextSpeech({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Discover",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        Text(
          "News from all around the world",
          style: TextStyle(
            color: AppColors.lightBlackColor,
          ),
        ),
      ],
    );
  }
}
