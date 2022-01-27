import 'package:flutter/material.dart';
import '../widgets/lang_message.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String _title = 'Internationalization';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LangMessage(), //our translation//
      //Locale according to the device enabled locale//
      locale: Get.deviceLocale,
      // locale: const Locale('en','US'), //custom local//
      fallbackLocale: const Locale('en','US'),//if wrong local is selected//
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen(
        title: _title,
      ),
    );
  }
}
