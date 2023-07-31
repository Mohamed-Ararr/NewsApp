import "package:flutter/material.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/RecomNewsCard.dart";

class RecomListview extends StatelessWidget {
  const RecomListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const RecomNewsCard();
      },
    );
  }
}
