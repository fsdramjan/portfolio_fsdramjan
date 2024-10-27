 
import 'package:flutter/material.dart';
import 'package:fsdramjan/main.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
     
    return GetMaterialApp(
      showSemanticsDebugger: false,
      home: MyHomePage(
        title: 'title',
      ),
    );
  }
}
