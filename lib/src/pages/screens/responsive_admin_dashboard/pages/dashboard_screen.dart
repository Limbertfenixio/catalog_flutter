import 'package:flutter/material.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/colors.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/responsive_util.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/headerd_widget.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/myfilesd_widget.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/recent_files_widget.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/storagedetailsd_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            HeaderDashboardWidget(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFilesDashboardWidget(),
                      SizedBox(height: defaultPadding),
                      RecentFilesDashboardWidget(),
                      if (ResponsiveUtilDashboard.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (ResponsiveUtilDashboard.isMobile(context))
                        StorageDetailsDashboardWidget(),
                    ],
                  ),
                ),
                if (!ResponsiveUtilDashboard.isMobile(context))
                  SizedBox(width: defaultPadding),
                if (!ResponsiveUtilDashboard.isMobile(context))
                  Expanded(flex: 2, child: StorageDetailsDashboardWidget())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
