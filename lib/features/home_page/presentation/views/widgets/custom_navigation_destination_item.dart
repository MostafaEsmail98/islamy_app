import 'package:flutter/material.dart';

class CustomNavigationDestinationItem extends StatelessWidget {
  CustomNavigationDestinationItem(this.urlImage, this.label, {super.key});
  String urlImage ;
  String label ;



  @override
  Widget build(BuildContext context) {
    return  NavigationDestination(
      icon: ImageIcon(
        AssetImage(
          urlImage,
        ),
        color: Colors.white,
        size: 50,
      ),
      selectedIcon: ImageIcon(
        AssetImage(urlImage),
        size: 50,
      ),
      label: label,
    );
  }
}
