import 'package:flutter/material.dart';

class ScreensPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: menuItems(context),
      ).toList(),
    );
  }
}

List<Widget> menuItems(BuildContext context) {
  List<Widget> widgetItems = [];
  var items = [
    {
      "title": "Responsive Admin Panel or Dashboard",
      "route": "/responsive-dashboard"
    },
  ];

  items.forEach((value) {
    print(value['title']);
    var widget = ListTile(
      title: Text(
        value['title'].toString(),
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.blue,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(value['route'].toString());
      },
    );

    widgetItems.add(widget);
  });

  return widgetItems;
}
