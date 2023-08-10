import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:newsapp/Core/serviceLocator.dart';
import 'package:newsapp/Data/HomeRepo/HomeRepoImpl.dart';
import 'package:newsapp/Features/ArticleView/Presentation/ArticleView.dart';
import 'package:newsapp/Features/HomeView/Presentation/HomeView.dart';
import 'package:newsapp/Features/RecomView/Presentation/RecomView.dart';

import '../Data/BLoC Manager/News Cubit/news_cubit.dart';
import '../Features/SplashView/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String recomView = "/recomView";
  static String articleView = "/articleView";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              NewsCubit(locator.get<HomeRepoImpl>())..fetchNews("sports"),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: recomView,
        builder: (context, state) => const RecomView(),
      ),
      GoRoute(
        path: articleView,
        builder: (context, state) => const ArticleView(),
      ),
    ],
  );
}
