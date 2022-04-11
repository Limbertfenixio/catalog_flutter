import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeTextPage extends StatelessWidget {
  const HomeTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Text Standard", "route": "/text-standard"},
      {"title": "Rich Text ", "route": "/rich-text"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
