import 'package:flutter/material.dart';
import 'package:widget_catalog/src/utils/navigation_util.dart';

class ListItemsWidgets extends StatelessWidget {
  final List<Map<String, String>> items;

  const ListItemsWidgets({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    items.forEach((e) {
      print(e['title']);
      var widgetItem = ListTile(
        title: Text(
          "${e['title']}",
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        onTap: () {
          goToPage(context, e['route'].toString());
        },
      );

      widgets.add(widgetItem);
    });

    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: widgets,
      ).toList(),
    );
  }
}
