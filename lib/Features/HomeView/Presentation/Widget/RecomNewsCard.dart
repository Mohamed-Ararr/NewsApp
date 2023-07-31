import "package:flutter/material.dart";

import "../../../../Constants.dart";

class RecomNewsCard extends StatelessWidget {
  const RecomNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
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
                Text("What training do vollyball players need?"),
                SizedBox(height: 5),
                Text("30 / 07 / 2023"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
