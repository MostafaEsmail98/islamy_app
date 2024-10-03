import 'package:flutter/material.dart';

class CustomNavigationDestinationItem extends StatelessWidget {
  const CustomNavigationDestinationItem(this.urlImage, this.label, {super.key});

  final String urlImage;

  final String label;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: ImageIcon(
        AssetImage(
          urlImage,
        ),
        color: Colors.white,
        size: 40,
      ),
      selectedIcon: ImageIcon(
        AssetImage(urlImage),
        size: 40,
      ),
      label: label,
    );
  }
}
