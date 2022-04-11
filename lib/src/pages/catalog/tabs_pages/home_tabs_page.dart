import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeTabsPage extends StatelessWidget {
  const HomeTabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Tabs Simple", "route": "/tabs-simple"},
      {"title": "Bottom Tab Bar", "route": "/bottom-tab"},
      {"title": "Bottom Navigation Bar", "route": "/bottom-navigation"},
      {"title": "Page Selector", "route": "/page-selector"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabs Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
