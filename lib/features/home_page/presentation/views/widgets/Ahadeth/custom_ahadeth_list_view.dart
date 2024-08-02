import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomAhadethListView extends StatelessWidget {
  const CustomAhadethListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 50,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {

          },
          child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text("الحديث رقم 1 ",
                    style: Styles.textStyle25.copyWith(
                      fontWeight: FontWeight.w500,
                    )),
              )),
        );
      },
    );
  }
}
