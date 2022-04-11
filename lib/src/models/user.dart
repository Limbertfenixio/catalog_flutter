class User {
  String nombre;
  int edad;
  List<String> professions;

  User({
    required this.nombre,
    required this.edad,
    required this.professions,
  });

  User copyWith({
    String? nombre,
    int? edad,
    List<String>? professions,
  }) =>
      User(
        edad: edad ?? this.edad,
        nombre: nombre ?? this.nombre,
        professions: professions ?? this.professions,
      );
}
