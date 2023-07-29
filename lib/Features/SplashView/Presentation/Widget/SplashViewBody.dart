import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:newsapp/Core/AppRouter.dart";

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),
        () => GoRouter.of(context).push(AppRouter.homeView));
    super.initState();
  }

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
