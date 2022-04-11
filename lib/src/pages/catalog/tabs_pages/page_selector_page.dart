import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class PageSelectorPage extends StatelessWidget {
  const PageSelectorPage({Key? key}) : super(key: key);

  static const icons = [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.cloud),
    Icon(Icons.warning),
    Icon(Icons.tram_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: icons.length,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("PageSelector Widgets"),
        ),
        body: CodeViewerWidget(
          child: Builder(
            builder: (context) {
              return Center(
                child: Column(
                  children: [
                    const TabPageSelector(
                      color: Colors.red,
                      indicatorSize: 12.0,
                      selectedColor: Colors.amber,
                    ),
                    const Expanded(
                      child: IconTheme(
                        data: IconThemeData(
                          color: Colors.white,
                          size: 70.0,
                        ),
                        child: TabBarView(children: icons),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        final TabController tabController =
                            DefaultTabController.of(context)!;
                        if (!tabController.indexIsChanging) {
                          tabController.animateTo(icons.length - 1);
                        }
                      },
                      child: const Text("SKIP"),
                    )
                  ],
                ),
              );
            },
          ),
          sourceFilePath: 'pages/catalog/tabs_pages/page_selector_page.dart',
        ),
      ),
    );
  }
}
