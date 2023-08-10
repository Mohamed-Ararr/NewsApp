import "package:flutter/material.dart";
import "package:newsapp/Constants.dart";

import "News.dart";

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: const News(),
          ),
        ),
      ),
    );
  }
}
