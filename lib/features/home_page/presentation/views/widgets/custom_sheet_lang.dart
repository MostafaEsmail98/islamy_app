import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/colors.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/styles.dart';
import '../../manager/my_provider.dart';

class LanguageSheet extends StatelessWidget {
  const LanguageSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(children: [
        InkWell(
          onTap: () {
            provider.changeLanguage("en");
          },
          child: Row(
            children: [
              Text(
                "English",
                style:
                    Styles.textStyle25.copyWith(color: KColors.kPrimaryColor),
              ),
              const Spacer(),
              provider.language == "en"
                  ? Icon(Icons.done, color: KColors.kPrimaryColor)
                  : const SizedBox.shrink(),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            provider.changeLanguage("ar");
          },
          child: Row(
            children: [
              Text(
                "العربية",
                style:
                    Styles.textStyle25.copyWith(color: KColors.kPrimaryColor),
              ),
              const Spacer(),
              provider.language == "ar"
                  ? Icon(Icons.done, color: KColors.kPrimaryColor)
                  : const SizedBox.shrink(),
            ],
          ),
        )
      ]),
    );
  }
}
