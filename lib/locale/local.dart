import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyLocal implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "حجز موعد",
          "2": "عربي",
          "3": "انجليزي",
          "4": "من فضلك ادخل اللغة",
          "5": "الشكاوي",
        },
        "en": {
          "1": "appointment",
          "2": "arabic",
          "3": "english",
          "4": "please enter the language",
          "5": "Complaints",

        }
      };
}
