import "package:flutter/material.dart";
import "package:newsapp/Constants.dart";
import "package:newsapp/Core/AppColors.dart";
import "package:newsapp/Core/AppFonts.dart";
import "package:newsapp/Features/RecomView/Presentation/Widgets/CategoriesBox.dart";
import "package:newsapp/Features/RecomView/Presentation/Widgets/categories.dart";

import "../../../../Core/BackButton.dart";

class ArticleViewBody extends StatelessWidget {
  const ArticleViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blueColor,
        elevation: 0,
        title: const Text("Content"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPaddingLR15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  "assets/image.png",
                  scale: 0.3,
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Categories(
                      index: 0,
                      width: 70,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Facebook and Instagram’s news blackout in Canada starts today",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        Icon(Icons.public),
                        SizedBox(width: 10),
                        Text(
                          "Engadget",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Hi, Today I want to share with you the mobile app concept of a GoRead - News App What do you guys think? Let me know in the comments section! Hope you guys enjoy it. Press 'L' if you like it. Sheeesshh ⚡ Let's talk: rizaldwi10@gmail.com | Instagram Thank you !!",
                      style: TextStyle(
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
