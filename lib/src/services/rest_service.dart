import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:widget_catalog/src/environment/configuration.dart';
import 'package:widget_catalog/src/models/generic_model.dart';
import 'package:widget_catalog/src/models/photos_model.dart';

class RestClientService {
  /* final _headers = {'Content-Type': 'application/json'};

  Future<GenericResponse> getPhotos(String path) async {
    http.Response response = await http
        .get("https://jsonplaceholder.typicode.com/photos", headers: _headers);

    try {
      if (response.statusCode == 200) {
        //print("peticion exitosa ${response.body}");
        return _genericResponseFromJson(0, "", response.body);
      } else {
        return _genericResponseFromJson(1, response.body, null);
      }
    } catch (e) {
      if (e.toString().contains("No route to host") ||
          e.toString().contains("No address associated with hostname") ||
          e.toString().contains("Connection refused") ||
          e.toString().contains("Network is unreachable")) {
        return _genericResponseFromJson(
            1,
            "Consulte la conexión de datos o wifi de su dispositivo, no es posible conectarse con el servidor.",
            null);
      } else {
        return _genericResponseFromJson(
            1, "Error en el servidor, detalle : ${e.toString()}", null);
      }
    }
  }

  GenericResponse _genericResponseFromJson(
      int statusCode, String message, dynamic data) {
    var genericResponse = new GenericResponse();
    genericResponse.statusCode = statusCode;
    genericResponse.message = message;
    genericResponse.data = (data != null)
        ? (jsonDecode(data) as List).map((e) => PhotosModel.fromMap(e)).toList()
        : [];
    return genericResponse;
  } */
}
