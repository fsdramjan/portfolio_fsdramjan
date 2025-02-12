import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/configs/appColors.dart';

class CardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? cardColor;

  final BorderRadiusGeometry? borderRadius;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? borderColor;
  EdgeInsetsGeometry? cardMargin;
  CardWidget({
    required this.child,
    this.padding,
    this.height,
    this.width,
    this.cardColor,
    this.borderRadius,
    this.borderColor,
    this.cardMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor ?? Appcolors.primaryColor,
      margin: cardMargin,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor ?? Appcolors.grey),
        borderRadius: borderRadius ?? BorderRadius.circular(20),
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? Appcolors.grey),
          color: cardColor ?? Appcolors.primaryColor,
          borderRadius: borderRadius ?? BorderRadius.circular(20),
        ),
        child: Padding(
          padding: padding ?? EdgeInsets.all(10),
          child: child,
        ),
      ),
    );
  }
}
