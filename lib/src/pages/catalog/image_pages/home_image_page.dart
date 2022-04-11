import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeImagePage extends StatelessWidget {
  const HomeImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "ImageFiltered", "route": "/image-filtered"},
      {"title": "Image", "route": "/image"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Images Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
