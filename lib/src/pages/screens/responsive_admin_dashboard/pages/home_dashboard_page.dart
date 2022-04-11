import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/pages/dashboard_screen.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/responsive_util.dart';
import 'package:widget_catalog/src/providers/responsive_admin_dashboard/menu_dashboard_provider.dart';
import 'package:widget_catalog/src/widgets/responsive_dashboard_widgets/sidemenud_widget.dart';

class HomeDashboardPage extends StatelessWidget {
  const HomeDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuProvider>().scaffoldKey,
      drawer: SideMenuDashboardWidget(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ResponsiveUtilDashboard.isDesktop(context))
              Expanded(child: SideMenuDashboardWidget()),
            Expanded(
              child: DashboardScreen(),
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
