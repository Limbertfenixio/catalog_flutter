import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeDrawerMenuPage extends StatelessWidget {
  const HomeDrawerMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemsSubMenu = [
      {"title": "Menu Drawer Simple", "route": "/drawer-simple"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Drawer Widgets"),
      ),
      body: ListItemsWidgets(
        items: itemsSubMenu,
      ),
    );
  }
}
