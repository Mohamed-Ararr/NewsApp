import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:newsapp/Core/AppRouter.dart";

import "../../../../Constants.dart";

class RecomNewsCard extends StatelessWidget {
  const RecomNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRouter.articleView),
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: 100,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    "What training do vollyball players need? What training do vollyball players need? What training do vollyball players need?",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 5),
                  Text("30 / 07 / 2023"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
