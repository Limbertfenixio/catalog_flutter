import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeAsyncPage extends StatelessWidget {
  const HomeAsyncPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "StreamBuilder", "route": "/stream-builder"},
      {"title": "StreamController", "route": "/stream-controller"},
      {"title": "FutureBuilder", "route": "/future-builder"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Async Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
