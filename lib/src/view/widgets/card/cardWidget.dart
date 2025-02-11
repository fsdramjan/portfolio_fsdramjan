import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/configs/appColors.dart';

class CardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? cardColor;

  final BorderRadiusGeometry? borderRadius;
  final Widget child;
  final EdgeInsetsGeometry? padding;

  CardWidget({
    required this.child,
    this.padding,
    this.height,
    this.width,
    this.cardColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor ?? Appcolors.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(15),
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: cardColor ?? Appcolors.primaryColor,
          borderRadius: borderRadius ?? BorderRadius.circular(15),
        ),
        child: Padding(
          padding: padding ?? EdgeInsets.all(10),
          child: child,
        ),
      ),
    );
  }
}
