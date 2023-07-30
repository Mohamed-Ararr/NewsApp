import "package:flutter/material.dart";

import "../../../../Core/AppFonts.dart";

class SectionTitleButton extends StatelessWidget {
  const SectionTitleButton({super.key, required this.title, this.onPressed});

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppFonts.sectionTitle19Bold,
        ),
        TextButton(
          onPressed: onPressed,
          child: const Text("View all"),
        ),
      ],
    );
  }
}
