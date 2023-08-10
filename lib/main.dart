import "package:flutter/material.dart";
import "package:newsapp/Core/AppRouter.dart";

import "Core/serviceLocator.dart";

void main() => {
      setupServiceLocator(),
      runApp(
        const NewsApp(),
      ),
    };

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.routes,
      theme: ThemeData(
        fontFamily: "Lato",
      ),
    );
  }
}
