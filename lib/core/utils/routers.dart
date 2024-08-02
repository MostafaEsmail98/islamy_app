import 'package:go_router/go_router.dart';
import 'package:islamy_app/features/home_page/data/models/ahadeth_model.dart';
import 'package:islamy_app/features/home_page/data/models/sura_model.dart';
import 'package:islamy_app/features/home_page/presentation/views/home_page.dart';
import 'package:islamy_app/features/home_page/presentation/views/widgets/Ahadeth/ahadeth_details.dart';
import 'package:islamy_app/features/home_page/presentation/views/widgets/quran/quran_details.dart';
import 'package:islamy_app/features/splash/presentation/views/splash.dart';

abstract class AppRouters {
  static final goRouters = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      path: "/homePage",
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: "/quranDetails",
      builder: (context, state) {
        SuraModel suraModel = state.extra as SuraModel;
        return QuranDetails(suraModel: suraModel);
      },
    ),GoRoute(
      path: "/ahadethDetails",
      builder: (context, state) {
       AhadethModel ahadethModel = state.extra as AhadethModel ;
        return AhadethDetails(ahadethModel);
      },
    ),
  ]);
}
