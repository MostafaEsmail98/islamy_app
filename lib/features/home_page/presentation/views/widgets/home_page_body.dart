import 'package:flutter/material.dart';
import '../../../../../core/utils/urlOfImage.dart';
import 'custom_navigation_destination_item.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int index = 0;
  final pages = [
    Center(
      child: Center(
        child: Text("1"),
      ),
    ),
    Center(
      child: Center(
        child: Text("2"),
      ),
    ),
    Center(
      child: Center(
        child: Text("3"),
      ),
    ),
    Center(
      child: Center(
        child: Text("4"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            pages[index],
          ],
        ),
        bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.transparent,
          backgroundColor: const Color(0xffB7935F),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index = index;
          }),
          destinations: [
            CustomNavigationDestinationItem(UrlOfImage.quranIcon, "Quran"),
            CustomNavigationDestinationItem(UrlOfImage.ahadethIcon, "Ahadeth"),
            CustomNavigationDestinationItem(UrlOfImage.sebhaIcon, "Sebha"),
            CustomNavigationDestinationItem(UrlOfImage.radioIcon, "Radio"),
          ],
        ));
  }
}
