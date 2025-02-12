import 'package:flutter/material.dart';
import 'package:fsdramjan/src/service/responsive/responsiveLayout.dart';
import 'package:fsdramjan/src/service/webHeaderText.dart';
import 'package:fsdramjan/src/view/pages/dashboard/responsive/mobileDashboard.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebHeaderTabTextService(
      headerText: 'Fsd Ramjan',
      child: ResponsiveLayout(
        mobileBody: MobileDashboard(),
        desktopBody: MobileDashboard(),
        tabletBody: MobileDashboard(),
        // desktopBody: DesktopDashboard(),
        // tabletBody: TabletDashboard(),
      ),
    );
  }
}
