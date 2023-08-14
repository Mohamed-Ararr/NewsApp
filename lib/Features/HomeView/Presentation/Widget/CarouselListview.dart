import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";

class CarouselListview extends StatelessWidget {
  const CarouselListview({super.key, this.imageUrl, required this.items});

  final String? imageUrl;
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
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
