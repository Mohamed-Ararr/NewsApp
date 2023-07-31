import "package:flutter/material.dart";
import "package:newsapp/Constants.dart";

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
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
