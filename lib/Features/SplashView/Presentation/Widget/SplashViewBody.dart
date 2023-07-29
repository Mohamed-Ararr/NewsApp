import "package:flutter/material.dart";

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "News App",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
