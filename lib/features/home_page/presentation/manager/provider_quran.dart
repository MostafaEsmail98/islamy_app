import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetails extends ChangeNotifier{
  List<String> sura =[];
  loadFile (int index)async {
    String file = await rootBundle.loadString("assets/text/assets/${index+1}.txt");
    List<String> lines = file.split("\n");
    sura = lines ;
    notifyListeners();
  }

}