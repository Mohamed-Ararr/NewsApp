import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:newsapp/Constants.dart";
import "package:newsapp/Core/AppColors.dart";
import "package:newsapp/Features/RecomView/Presentation/Widgets/TextSpeech.dart";

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
                Container(
                  height: 30,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      margin: const EdgeInsets.only(right: 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: kBorderRad10,
                        color: index == 0
                            ? AppColors.lightBlueColor
                            : AppColors.greyColor,
                      ),
                      child: Text(
                        "hello",
                        style: TextStyle(
                          fontSize: 13,
                          color: index == 0
                              ? AppColors.whiteColor
                              : Colors.black38,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
