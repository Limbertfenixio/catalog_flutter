import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeClippersPage extends StatelessWidget {
  const HomeClippersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "ClipOval & ClipRRect & ClipPath", "route": "/clip-path"},
      {"title": "CustomPainter", "route": "/custom-painter"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
