import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/configs/appColors.dart';

import 'package:fsdramjan/src/view/pages/dashboard/dashboardPage.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:  Appcolors.backgroundColor,
      ),
      home: DashboardPage(),
    );
  }
}
