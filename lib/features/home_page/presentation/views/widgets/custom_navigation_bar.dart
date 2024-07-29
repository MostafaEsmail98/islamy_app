
import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/urlOfImage.dart';
import 'package:islamy_app/features/home_page/presentation/views/widgets/custom_navigation_destination_item.dart';

class CustomNavigationBar extends StatefulWidget {
   CustomNavigationBar({super.key,required this.index});
  int index ;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      indicatorColor: Colors.transparent,
      backgroundColor: const Color(0xffB7935F),
      selectedIndex: widget.index,
      onDestinationSelected: (index) =>
          setState(() {
            widget.index = index;
          }),
      destinations: [
        CustomNavigationDestinationItem(UrlOfImage.quranIcon, "Quran"),
        CustomNavigationDestinationItem(UrlOfImage.ahadethIcon, "Ahadeth"),
        CustomNavigationDestinationItem(UrlOfImage.sebhaIcon, "Sebha"),
        CustomNavigationDestinationItem(UrlOfImage.radioIcon, "Radio"),
      ],
    );
  }
}