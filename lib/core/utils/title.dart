import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/styles.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Text(
      "Islamy",
      style: Styles.textStyle30,
    );
  }
}
