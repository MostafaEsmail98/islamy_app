
import 'package:flutter/services.dart';

import 'models/ahadeth_model.dart';



class ProviderAhadeth {
  static List<AhadethModel> allAhdeth = [];
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