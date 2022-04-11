import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeAppBarPage extends StatelessWidget {
  const HomeAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Basic AppBar", "route": "/basic-appbar"},
      {"title": "Bottom AppBar ", "route": "/bottom-appbar"},
      {"title": "Search AppBar ", "route": "/search-appbar"},
      {"title": "Convex AppBar ", "route": "/convex-appbar"},
      {"title": "Backdrop ", "route": "/backdrop"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
