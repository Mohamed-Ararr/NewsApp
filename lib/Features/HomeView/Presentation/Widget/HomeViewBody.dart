import "package:flutter/material.dart";
import "package:newsapp/Constants.dart";

import "../../../../Core/AppColors.dart";

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "News App",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.blackColor,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.greyColor,
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search_rounded,
                          color: AppColors.blackColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
