import 'package:flutter/material.dart';

import '../../../../../core/utils/colors.dart';
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
            SizedBox(
              height: 40,
              width: 3,
              child: DecoratedBox(
                  decoration:
                  BoxDecoration(color: KColors.kPrimaryColor)),
            ),
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
