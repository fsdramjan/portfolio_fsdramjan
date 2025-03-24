import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/responsive/responsiveLayout.dart';
import 'package:fsdramjan/src/service/webHeaderText.dart';
import 'package:fsdramjan/src/view/pages/dashboard/responsive/desktopDashboard.dart';
import 'package:fsdramjan/src/view/pages/dashboard/responsive/mobileDashboard.dart';
import 'package:fsdramjan/src/view/pages/dashboard/responsive/tabletDashboard.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebHeaderTabTextService(
      headerText: 'Fsd Ramjan',
      child: ResponsiveLayout(
        mobileBody: MobileDashboard(),
        desktopBody: DesktopDashboard(),
        tabletBody: TabletDashboard(),
        // desktopBody: DesktopDashboard(),
        // tabletBody: TabletDashboard(),
      ),
    );
  }
}
