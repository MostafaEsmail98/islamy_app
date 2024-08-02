import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/core/utils/sperate_line.dart';
import 'package:islamy_app/core/utils/styles.dart';
import 'package:islamy_app/core/utils/title.dart';
import 'package:islamy_app/core/utils/urlOfImage.dart';

import 'package:islamy_app/features/home_page/presentation/views/widgets/Ahadeth/custom_ahadeth_list_view.dart';

import '../../../data/models/ahadeth_model.dart';


class CustomAhadethTab extends StatelessWidget {
  CustomAhadethTab() {
    loadHadeth();
  }

  List<AhadethModel> allAhdeth = [];

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
            "الاحاديث",
            style: Styles.textStyle25.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          SperateLine(
            width: double.maxFinite,
            height: 3,
          ),
           CustomAhadethListView(allAhdeth)
        ],
      ),
    );
  }


  loadHadeth() {
    rootBundle.loadString("assets/text/ahadeth/ahadeth.txt").then((value) {
      List<String> ahadethList = value.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        AhadethModel ahadethModel = AhadethModel(title, content);
        allAhdeth.add(ahadethModel);
      }
    }).catchError((e) {
      print(e.toString());
    });
  }

}



