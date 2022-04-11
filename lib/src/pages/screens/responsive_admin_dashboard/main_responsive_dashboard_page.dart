import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/colors.dart';
import 'package:widget_catalog/src/pages/screens/responsive_admin_dashboard/pages/home_dashboard_page.dart';
import 'package:widget_catalog/src/providers/responsive_admin_dashboard/menu_dashboard_provider.dart';

class ResponsiveDashboardMainPage extends StatelessWidget {
  const ResponsiveDashboardMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => MenuProvider(),
          ),
        ],
        child: HomeDashboardPage(),
      ),
    );
  }
}
