import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:newsapp/Core/AppRouter.dart";

import "Core/observer.dart";
import "Core/serviceLocator.dart";

void main() => {
      setupServiceLocator(),
      Bloc.observer = NewsObserver(),
      // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
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
