import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

const pages = <String, IconData>{
  'home': Icons.home,
  'map': Icons.map,
  'add': Icons.add,
  'message': Icons.message,
  'people': Icons.people,
};

class ConvexAppBarPage extends StatefulWidget {
  ConvexAppBarPage({Key? key}) : super(key: key);

  @override
  State<ConvexAppBarPage> createState() => _ConvexAppBarPageState();
}

class _ConvexAppBarPageState extends State<ConvexAppBarPage>
    with TickerProviderStateMixin {
  TabStyle tabStyle = TabStyle.reactCircle;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      initialIndex: 2,
      animationDuration: const Duration(seconds: 1),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Convex AppBar Widgets"),
        ),
        body: CodeViewerWidget(
          child: Column(
            children: [
              DropdownButton<TabStyle>(
                dropdownColor: Colors.black,
                value: tabStyle,
                items: [
                  for (var item in TabStyle.values)
                    DropdownMenuItem(
                      value: item,
                      child: Text(
                        item.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                ],
                onChanged: (value) {
                  setState(() {
                    tabStyle = value!;
                  });
                },
              ),
              const Divider(),
              Expanded(
                child: TabBarView(
                  //controller: TabController(length: pages.length, vsync: this),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    for (var item in pages.values)
                      Icon(
                        item,
                        color: Colors.white,
                        size: 64,
                      ),
                  ],
                ),
              ),
            ],
          ),
          sourceFilePath: 'pages/catalog/appbar_pages/convex_appbar_page.dart',
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          const {3: '+99'},
          items: [
            for (var item in pages.entries)
              TabItem(icon: item.value, title: item.key)
          ],
          style: tabStyle,
          onTap: (int? index) {},
          onTabNotify: (int? index) {
            return true;
          },
          badgeColor: Colors.orange,
          badgeTextColor: Colors.black,
          badgeMargin: const EdgeInsets.only(bottom: 30.0, left: 40.0),
          disableDefaultTabController: false,
          color: Colors.cyan,
          backgroundColor: Colors.red,
          cornerRadius: 0.0,
          elevation: 10,

          //curveSize: 160,
        ),
      ),
    );
  }
}
