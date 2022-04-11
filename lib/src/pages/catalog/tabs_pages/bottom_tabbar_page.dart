import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class BottomTabBarPage extends StatefulWidget {
  const BottomTabBarPage({Key? key}) : super(key: key);

  @override
  State<BottomTabBarPage> createState() => _BottomTabBarPageState();
}

class _BottomTabBarPageState extends State<BottomTabBarPage>
    with SingleTickerProviderStateMixin {
  final pages = [
    const Center(child: Icon(Icons.cloud, color: Colors.white, size: 64)),
    const Center(child: Icon(Icons.alarm, color: Colors.white, size: 64)),
    const Center(child: Icon(Icons.forum, color: Colors.white, size: 64)),
  ];

  final tabs = [
    const Tab(icon: Icon(Icons.cloud), text: "Cloud Tab"),
    const Tab(icon: Icon(Icons.alarm), text: "Alarm Tab"),
    const Tab(icon: Icon(Icons.forum), text: "Forum Tab"),
  ];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: pages.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Tab Widgets"),
      ),
      body: CodeViewerWidget(
        child: TabBarView(
          children: pages,
          controller: tabController,
        ),
        sourceFilePath: 'pages/catalog/tabs_pages/bottom_tabbar_page.dart',
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: TabBar(
          tabs: tabs,
          controller: tabController,
          indicatorWeight: 1,
          indicator: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
            ]),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.only(bottom: 10.0),
        ),
      ),
    );
  }
}
