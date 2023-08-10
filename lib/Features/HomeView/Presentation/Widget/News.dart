import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:newsapp/Data/BLoC%20Manager/News%20Cubit/news_cubit.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/ImageModel.dart";

import "../../../../Core/AppRouter.dart";
import "CarouselListview.dart";
import "CustomAppBar.dart";
import "RecomListview.dart";
import "SectionTitleButton.dart";

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsSuccess) {
          List breakingNewsList = state.news["articles"];
          return Column(
            children: [
              const SizedBox(height: 5),
              const CustomAppBar(),
              const SizedBox(height: 15),
              SectionTitleButton(
                title: "Breaking news",
                onPressed: () {},
              ),
              CarouselListview(
                items: List.generate(
                  breakingNewsList.length,
                  (index) => ImageModel(
                      imageUrl: breakingNewsList[index]["urlToImage"]),
                ),
              ),
              const SizedBox(height: 15),
              SectionTitleButton(
                title: "Recommendation",
                onPressed: () => GoRouter.of(context).push(AppRouter.recomView),
              ),
              const RecomListview(),
            ],
          );
        } else if (state is NewsFailure) {
          return Text(state.errorMsg);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
