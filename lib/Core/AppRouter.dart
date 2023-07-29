import 'package:go_router/go_router.dart';

import '../Features/SplashView/Presentation/SplashView.dart';

class AppRouter {
  static String homeView = "homeView";

  static final routes = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
