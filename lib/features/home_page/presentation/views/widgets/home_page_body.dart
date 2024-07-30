import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/features/home_page/presentation/views/widgets/custom_ahadeth_tab.dart';
import '../../../../../core/utils/urlOfImage.dart';
import 'custom_navigation_destination_item.dart';
import 'custom_quran_tab.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int index = 0;
  final pages = [
    const CustomQuranTab(),
    const CustomAhadethTab(),
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
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(UrlOfImage.background),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: pages[index],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.transparent,
          backgroundColor: KColors.kPrimaryColor,
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

  Row title() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Islamy",
          style: Styles.textStyle30,
        )
      ],
    );
  }
}
