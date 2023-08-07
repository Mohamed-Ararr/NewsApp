import "package:flutter/material.dart";

import 'categories.dart';

class CategoriesBox extends StatelessWidget {
  const CategoriesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Categories(index: index),
      ),
    );
  }
}
