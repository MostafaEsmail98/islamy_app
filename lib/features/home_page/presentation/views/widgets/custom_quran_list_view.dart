import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/sperate_line.dart';
import '../../../../../core/utils/styles.dart';

class CustomQuranListView extends StatelessWidget {
  const CustomQuranListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 114,
      itemBuilder: (context, index) {
        return Row(
          children: [
            const Expanded(
              child: Text(
                "256",
                style: Styles.textStyle25,
                textAlign: TextAlign.center,
              ),
            ),
           SperateLine(width: 3, height: 40),
            const Expanded(
              child: Text(
                "البقرة",
                style: Styles.textStyle25,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      },
    );
  }
}
