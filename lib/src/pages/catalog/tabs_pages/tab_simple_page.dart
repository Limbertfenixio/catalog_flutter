import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class TabSimplePage extends StatelessWidget {
  const TabSimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      const Center(child: Icon(Icons.cloud, color: Colors.white, size: 64)),
      const Center(child: Icon(Icons.alarm, color: Colors.white, size: 64)),
      const Center(child: Icon(Icons.forum, color: Colors.white, size: 64)),
    ];

    final tabs = [
      Material(
        color: Colors.blue,
        child: Tab(
          height: 80,
          iconMargin: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.cloud),
                Text("Cloud Tab"),
              ],
            ),
          ),
        ),
      ),
      //const Tab(icon: Icon(Icons.cloud), text: "Cloud Tab"),
      const Tab(icon: Icon(Icons.alarm), text: "Alarm Tab"),
      const Tab(icon: Icon(Icons.forum), text: "Forum Tab"),
    ];

    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Tab Widgets"),
          bottom: TabBar(
            tabs: tabs,
            padding: const EdgeInsets.all(4.0),
            indicatorColor: Colors.red,
            isScrollable: false,
            automaticIndicatorColorAdjustment: true,
            indicatorWeight: 5.0,
            indicatorPadding: const EdgeInsets.all(4.0),
            indicator: const BoxDecoration(
              color: Colors.orange,
              border: BorderDirectional(
                bottom: BorderSide(
                  color: Colors.red,
                  width: 6.0,
                ),
              ),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.greenAccent,
            labelStyle: const TextStyle(fontSize: 14),
            labelPadding: const EdgeInsets.all(4.0),
            unselectedLabelColor: Colors.amberAccent,
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            onTap: (int? index) {},
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (states) {
                return Colors.red;
              },
            ),
          ),
        ),
        body: CodeViewerWidget(
          child: TabBarView(
            children: pages,
          ),
          sourceFilePath: 'pages/catalog/tabs_pages/tab_simple_page.dart',
        ),
      ),
    );
  }
}
