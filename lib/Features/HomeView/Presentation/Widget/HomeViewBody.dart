import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:newsapp/Constants.dart";
import "package:newsapp/Core/AppFonts.dart";
import "package:newsapp/Features/HomeView/Presentation/Widget/CarouselListview.dart";
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
                  onPressed: () {},
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: ClipRRect(
                              borderRadius: kBorderRad15,
                              child: Image.asset("assets/image.png"),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Category",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                    "What training do vollyball players need?"),
                                SizedBox(height: 5),
                                Text("30 / 07 / 2023"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
