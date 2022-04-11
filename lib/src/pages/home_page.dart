import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:widget_catalog/src/pages/catalog/catalog_page.dart';
import 'package:widget_catalog/src/pages/integrations/integrations_page.dart';
import 'package:widget_catalog/src/pages/screens/screens_page.dart';
import 'package:widget_catalog/src/providers/theme_provider.dart';
import 'package:widget_catalog/src/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = [CatalogPage(), ScreensPage(), IntegrationsPage()];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeState = context.read<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Catalog"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              themeState.setIsDarkTheme = !themeState.getIsDarkTheme;
            },
            child: Icon(Icons.dark_mode),
          ),
          SizedBox(width: 15.0)
        ],
      ),
      body: PageTransitionSwitcher(
        duration: Duration(seconds: 1),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return FadeThroughTransition(
            fillColor: ColorsThemeDark.primary,
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: _pages[currentPage],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int) {
          setState(() {
            currentPage = int;
          });
        },
        items: [
          //Icon(Icons.ad_units)
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Catalog",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_motion_sharp),
            label: "Screens",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_file),
            label: "Integrations",
          ),
        ],
      ),
    );
  }
}
