import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeTablePage extends StatelessWidget {
  const HomeTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Table Simple", "route": "/table-simple"},
      {"title": "Data Table", "route": "/data-table"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Table Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
