import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeDisplayInformationPage extends StatelessWidget {
  const HomeDisplayInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Tooltip", "route": "/tooltip"},
      {"title": "Snackbar", "route": "/snackbar"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Information Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
