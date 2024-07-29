import 'package:go_router/go_router.dart';
import 'package:islamy_app/features/home_page/presentation/views/home_page.dart';
import 'package:islamy_app/features/splash/presentation/views/splash.dart';

abstract class AppRouters {
  static final goRouters = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splash(),
    ),GoRoute(
      path: "/homePage",
      builder: (context, state) => const HomePage(),
    ),GoRoute(
      path: "/",
      builder: (context, state) => const Splash(),
    ),
  ]);
}
