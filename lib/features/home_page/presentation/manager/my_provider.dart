import 'package:flutter/material.dart';
import '../../../../core/utils/sharedPrefs.dart';



class MyProvider extends ChangeNotifier{
  String language = "en";

  void inti()async{
    String? lang=SharedPrefs.getLang();
    changeLanguage(lang??"en");
  }

  void changeLanguage(String lang){
    language=lang;
    SharedPrefs.setLang(lang);
    notifyListeners();
  }
}