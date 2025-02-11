import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fsdramjan/src/service/configs/appColors.dart';
 
class WebHeaderTabTextService extends StatelessWidget {
  final Widget child;

  final String? headerText;
  WebHeaderTabTextService({
    required this.child,
    required this.headerText,
  });
  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
      label: headerText,
      primaryColor: Appcolors.primaryColor.value,
    ));
    return child;
  }
}
