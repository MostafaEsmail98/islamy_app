import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/core/utils/title.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utils/colors.dart';
import '../../manager/my_provider.dart';
import 'custom_sheet_lang.dart';

class CustomSettingTab extends StatefulWidget {
  const CustomSettingTab({super.key});

  @override
  State<CustomSettingTab> createState() => _CustomSettingTab();
}

class _CustomSettingTab extends State<CustomSettingTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const TitleApp(),
      const SizedBox(height: 24,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          AppLocalizations.of(context)!.language,
          style: Styles.textStyle25.copyWith(color: KColors.kPrimaryColor),
        ),
      ),
      InkWell(
        onTap: () {
          showLang();
        },
        child: Container(
          margin: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(width: 2,),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(pro.language == "en" ? "English" : "العربية",
              style: Styles.textStyle25.copyWith(color: KColors.kPrimaryColor),),
          ),
        ),
      ),
    ]);
  }

  showLang() {
    showModalBottomSheet(
      shape: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
      context: context,
      builder: (context) {
        return const LanguageSheet();
      },
    );
  }
}
