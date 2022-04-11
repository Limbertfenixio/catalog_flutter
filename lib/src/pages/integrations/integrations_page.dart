import 'package:flutter/material.dart';

class IntegrationsPage extends StatelessWidget {
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
    {"title": "InheritedWidget", "route": "/inherited-widget"},
    {"title": "Bloc", "route": "/bloc-state"},
    {"title": "Provider", "route": "/provider"},
    {"title": "GetX", "route": "/getx"},
    {"title": "Riverpood", "route": "/riverpood"},
    {"title": "Preview Html", "route": "/preview-html"},
    {"title": "Google Maps", "route": "/google-maps"},
  ];

  for (var value in items) {
    var widget = ListTile(
      title: Text(
        value['title'].toString(),
        style: const TextStyle(color: Colors.white),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.blue,
      ),
      onTap: () {
        Navigator.of(context).pushNamed(value['route'].toString());
      },
    );

    widgetItems.add(widget);
  }

  return widgetItems;
}
