import "package:carousel_slider/carousel_options.dart";
import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/ImageModel.dart";

import "../../../../Constants.dart";
import "../../../../Core/AppColors.dart";

class CarouselListview extends StatelessWidget {
  const CarouselListview({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: const [
        ImageModel(),
      ],
      options: CarouselOptions(
        aspectRatio: 2,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
      ),
    );
  }
}
