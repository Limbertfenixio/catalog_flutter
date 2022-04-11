import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class ResponsiveMainPage extends StatelessWidget {
  const ResponsiveMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Layout Builder", "route": "/layout-builder"},
      {"title": "Flutter Screen Util Package", "route": "/screen-util"},
      {"title": "Responsive Sizer Package", "route": "/responsive-sizer"},
      {"title": "Responsive Package", "route": "/responsive-package"},
      {"title": "Layout Package", "route": "/layout-package"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Design Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
