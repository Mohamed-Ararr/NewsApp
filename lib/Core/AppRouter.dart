import 'package:go_router/go_router.dart';
import 'package:newsapp/Features/HomeView/Presentation/HomeView.dart';
import 'package:newsapp/Features/RecomView/Presentation/RecomView.dart';

import '../Features/SplashView/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "/homeView";
  static String recomView = "/recomView";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: recomView,
        builder: (context, state) => const RecomView(),
      ),
    ],
  );
}
