class GenericResponse {
  int statusCode;
  String message;
  dynamic data;

  GenericResponse({required this.statusCode, required this.message, this.data});
}
