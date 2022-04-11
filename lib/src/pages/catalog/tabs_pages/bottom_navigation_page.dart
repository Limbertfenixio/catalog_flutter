import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class BottomNavigationBarPage extends StatefulWidget {
  BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final pages = [
    const Center(child: Icon(Icons.cloud, color: Colors.white, size: 64)),
    const Center(child: Icon(Icons.alarm, color: Colors.white, size: 64)),
    const Center(child: Icon(Icons.forum, color: Colors.white, size: 64)),
  ];

  final tabs = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.cloud),
      label: "Cloud Tab",
      backgroundColor: Colors.greenAccent,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.alarm),
      label: "Alarm Tab",
      activeIcon: Icon(
        Icons.bluetooth,
      ),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.forum),
      label: "Forum Tab",
      tooltip: "Tooltip with bar item",
    ),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar Widgets"),
      ),
      body: CodeViewerWidget(
        child: Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.orange,
            currentIndex: currentIndex,
            items: tabs,
            elevation: 10.0,
            type: BottomNavigationBarType.fixed,
            //fixedColor: Colors.black,
            iconSize: 30.0,
            selectedItemColor: Colors.blue,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedFontSize: 14.0,
            selectedIconTheme: const IconThemeData(color: Colors.red),
            unselectedItemColor: Colors.red,
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w300),
            unselectedFontSize: 12.0,
            unselectedIconTheme: const IconThemeData(color: Colors.indigo),
            showSelectedLabels: true,
            showUnselectedLabels: false,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            onTap: (int? index) {
              setState(
                () {
                  if (index != null) {
                    currentIndex = index;
                  }
                },
              );
            },
          ),
        ),
        sourceFilePath: 'pages/catalog/tabs_pages/bottom_navigation_page.dart',
      ),
    );
  }
}
