import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:newsapp/Constants.dart";
import "package:newsapp/Core/AppColors.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/RecomListview.dart";
import "package:newsapp/Features/RecomView/Presentation/Widgets/CategoriesBox.dart";
import "package:newsapp/Features/RecomView/Presentation/Widgets/TextSpeech.dart";
import "package:newsapp/Features/RecomView/Presentation/Widgets/categoriesListview.dart";

import "../../../../Core/BackButton.dart";

class RecomViewBody extends StatelessWidget {
  const RecomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                const CustomBackButton(),
                const SizedBox(height: 20),
                const TextSpeech(),
                const SizedBox(height: 20),
                const CategoriesBox(),
                const SizedBox(height: 20),
                const RecomListview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
