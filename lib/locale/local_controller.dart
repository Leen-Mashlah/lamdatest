// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'package:get/get.dart';
//
// class MyLocalController extends GetxController {
//   SharedPreferences sharepref = SharedPreferences.getInstance();
//
//
//   Locale initialLang = sharepref!.getString("lang") == null ? Get.deviceLocale! : Locale(sharepref!.getString("lang"));
//
//   void changelange(String codelang) {
//     Locale locale = Locale(codelang);
//     sharepref!.setString("lang",codelang);
//     Get.updateLocale(locale);
//   }
// }
