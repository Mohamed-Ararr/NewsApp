import "package:flutter/material.dart";

import "../../../../Constants.dart";
import "../../../../Core/AppColors.dart";

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          prefixIcon: const Icon(Icons.search, size: 20),
          focusedBorder: OutlineInputBorder(
              borderRadius: kBorderRad15,
              borderSide: BorderSide(
                color: AppColors.blueColor,
              )),
          border: OutlineInputBorder(borderRadius: kBorderRad15),
        ),
      ),
    );
  }
}
