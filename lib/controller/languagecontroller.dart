import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LanguageController extends GetxController{
  var text= 'hello';
  
  void chanelangauge(var language, var country){
    var locale=Locale(language,country);
    Get.updateLocale(locale);
  } 


}
