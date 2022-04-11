import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeGesturesPage extends StatelessWidget {
  const HomeGesturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "AbsorbPointer", "route": "/absorb-pointer"},
      {"title": "Gesture Detector", "route": "/gesture-detector"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestures Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
