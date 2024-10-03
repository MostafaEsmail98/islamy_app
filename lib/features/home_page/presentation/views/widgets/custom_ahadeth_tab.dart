import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/sperate_line.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/core/utils/title.dart';
import 'package:islamy_app/core/utils/urlOfImage.dart';
import 'package:islamy_app/features/home_page/data/DataOfAhadeth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/features/home_page/presentation/views/widgets/Ahadeth/custom_ahadeth_list_view.dart';



class CustomAhadethTab extends StatefulWidget {
  const CustomAhadethTab({super.key}) ;

  @override
  State<CustomAhadethTab> createState() => _CustomAhadethTabState();
}

class _CustomAhadethTabState extends State<CustomAhadethTab> {
  @override
  void initState() {
    ProviderAhadeth().loadHadeth();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const TitleApp(),
          SizedBox(
            height: 227,
            child: Image.asset(UrlOfImage.ahadethImage),
          ),
          SperateLine(
            width: double.maxFinite,
            height: 3,
          ),
          Text(
            AppLocalizations.of(context)!.ahadeth,
            style: Styles.textStyle25.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          SperateLine(
            width: double.maxFinite,
            height: 3,
          ),
           const CustomAhadethListView()
        ],
      ),
    );
  }
}



