import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    /* rootBundle.evict('data/menu_opts.json');
    print('que edo'); */

    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];
    //print(dataMap['rutas']);
    return opciones;
  }
}

final menuProvider = new _MenuProvider();
