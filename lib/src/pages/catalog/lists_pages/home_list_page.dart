import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeListPage extends StatelessWidget {
  const HomeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Dismissible", "route": "/dismissible"},
      {"title": "Expansion Tile", "route": "/expansion-tile"},
      {"title": "ListView Builder & List Tile", "route": "/list-view"},
      {"title": "Reorder List", "route": "/reorder-list"},
      {"title": "List Wheel", "route": "/list-wheel"},
      {"title": "Slidable List", "route": "/slidable-list"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Async Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
