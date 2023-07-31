import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:newsapp/Constants.dart";
import "package:newsapp/Core/AppFonts.dart";
import "package:newsapp/Core/AppRouter.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/CarouselListview.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/RecomListview.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/SectionTitleButton.dart";

import "../../../../Core/AppColors.dart";
import "CustomAppBar.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: Column(
              children: [
                const SizedBox(height: 5),
                const CustomAppBar(),
                const SizedBox(height: 15),
                SectionTitleButton(
                  title: "Breaking news",
                  onPressed: () {},
                ),
                const CarouselListview(),
                const SizedBox(height: 15),
                SectionTitleButton(
                  title: "Recommendation",
                  onPressed: () =>
                      GoRouter.of(context).push(AppRouter.recomView),
                ),
                const RecomListview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
