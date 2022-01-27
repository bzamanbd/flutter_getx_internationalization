import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LangController extends GetxController {
  void languageChange(var prmtr1, var prmtr2) {
    var locale = Locale(prmtr1, prmtr2);
    Get.updateLocale(locale);
  }
}
