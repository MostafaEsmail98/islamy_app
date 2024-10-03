import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences prefs;

  static String? getLang() {
    return prefs.getString("lang");
  }

  static setLang(String lang) async {
    await prefs.setString("lang", lang);
  }
}