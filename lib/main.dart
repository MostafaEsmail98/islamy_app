import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:islamy_app/core/utils/routers.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/utils/sharedPrefs.dart';
import 'features/home_page/presentation/manager/my_provider.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPrefs.prefs = await SharedPreferences.getInstance();
  runApp(MultiProvider(
      providers: [ ChangeNotifierProvider(create: (context) => MyProvider()..inti()
      ),],
      child: const MyApp()))
  ;

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SafeArea(
      child: MaterialApp.router(
        locale: Locale(provider.language),
        title: 'Localizations Sample App',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'), // English
          Locale('ar'), // Spanish
        ],
        theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.elMessiriTextTheme(ThemeData().textTheme)),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.goRouters,
      ),
    );
  }
}
