import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier{
  String currentLang = "en";
 bool get isEnglish=> currentLang == 'en';
  void updateAppLang(String newLang){
    if(currentLang == newLang) return;
    currentLang = newLang;
    notifyListeners();
  }
}