import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:widget_catalog/src/models/photos_model.dart';

class PhotosApiProvider {
  final _headers = {'Content-Type': 'application/json'};
  Future<PhotosModel> fetchPhotosList() async {
    print('api');
    /*  var url = Uri.https(
        "https://jsonplaceholder.typicode.com", "/photos", {'q': '{http}'});
     */
    var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    http.Response response = await http.get(url, headers: _headers);

    if (response.statusCode == 200) {
      print("peticion exitosa ${response.body}");
      return PhotosModel.fromJson(json.decode(response.body.toString()));
    } else {
      throw Exception('Failed to load photos');
    }
    /* try {
      
    } catch (e) {
      if (e.toString().contains("No route to host") ||
          e.toString().contains("No address associated with hostname") ||
          e.toString().contains("Connection refused") ||
          e.toString().contains("Network is unreachable")) {
        throw Exception('Failed to internet');
      } else {
        throw Exception('Failed to server');
      }
    } */
  }
}
