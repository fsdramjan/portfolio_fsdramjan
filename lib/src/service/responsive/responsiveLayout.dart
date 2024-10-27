import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget? tabletBody;

  ResponsiveLayout({
    required this.mobileBody,
    required this.desktopBody,
    required this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1100)
        return desktopBody;
      else if (constraints.maxWidth >= 850 && tabletBody != null)
        return tabletBody as Widget;
      else
        return mobileBody;
    });
  }
}
