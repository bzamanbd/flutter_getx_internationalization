import 'package:flutter/material.dart';
import '../getxControllers/lang_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final String title;
  HomeScreen({Key? key, required this.title}) : super(key: key);
  LangController langController = Get.put(LangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('hello'.tr,
            textScaleFactor: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: ()=> langController.languageChange('en', 'US'),
              child: const Text('English'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: ()=> langController.languageChange('bng', 'BNG'),
              child: const Text('Bangla'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: ()=> langController.languageChange('fr', 'FR'),
              child: const Text('French'),
            ),
          ],
        ),
      ),
    );
  }
}
