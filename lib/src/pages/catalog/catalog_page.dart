import 'package:flutter/material.dart';
import 'package:widget_catalog/src/providers/menu_provider.dart';
import 'package:widget_catalog/src/utils/icon_string_util.dart';

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _lista();
  }
}

Widget _lista() {
  return FutureBuilder(
    future: menuProvider.loadData(),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        shrinkWrap: false,
        children: ListTile.divideTiles(
          context: context,
          tiles: _lista_json(snapshot.data, context),
        ).toList(),
      );
      //return _lista_json(snapshot.data, context),
    },
  );
}

List<Widget> _lista_json(List<dynamic>? dataJson, BuildContext context) {
  final List<Widget> catalogMenu = [];

  if (dataJson == null) {
    return [];
  }

  dataJson.forEach((element) {
    var widget_tem = ListTile(
      title: Text(
        element['texto'],
        style: TextStyle(color: Colors.indigo[50]),
      ),
      leading: getIcon(element['icon']),
      dense: true,
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.blue,
      ),
      onTap: () {
        /* final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          }); */
        //Navigator.push(context, route);
        Navigator.pushNamed(context, element['ruta']);
      },
    );
    //catalogMenu..add(widget_tem)..add(Divider());
    catalogMenu..add(widget_tem);
  });

  return catalogMenu;
}
