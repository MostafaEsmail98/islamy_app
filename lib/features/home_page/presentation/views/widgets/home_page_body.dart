import 'package:flutter/material.dart';

import 'custom_navigation_bar.dart';

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
        child: Text("3"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[index],
        bottomNavigationBar: CustomNavigationBar(index: index,));
  }

}