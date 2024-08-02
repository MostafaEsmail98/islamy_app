import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:islamy_app/core/utils/routers.dart';


void main()async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.elMessiriTextTheme(ThemeData().textTheme)),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.goRouters,
      ),
    );
  }
}
