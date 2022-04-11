import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomePageViewPage extends StatelessWidget {
  const HomePageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Page View Simple", "route": "/pv-simple"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
