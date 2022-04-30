import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp1/controller_bindings.dart';
import 'package:getxapp1/screen/albumpage.dart';
import 'package:getxapp1/screen/dropdownpage.dart';
import 'package:getxapp1/screen/homepage.dart';
import 'package:getxapp1/screen/languagepage.dart';
import 'package:getxapp1/screen/my_home_page.dart';
import 'package:getxapp1/screen/product_page.dart';
import 'package:getxapp1/screen/signup.dart';
import 'package:getxapp1/views/newproductpage.dart';

import 'models/messagemodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      translations:Messages(),
      // your translations
    locale: Locale('en', 'US'), // translations will be displayed in that locale
    fallbackLocale: Locale('en', 'US'),
    
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:NewProductPage()
      //AlbumPage()
      //MyHomePage()
      //SettingsScreen()
      //LanguagePage()
      //SignUpPage()
     // ProductPage()
      // HomePage()
    );
  }
}

