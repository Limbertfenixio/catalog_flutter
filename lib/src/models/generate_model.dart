import 'dart:convert';

class AutoGenerate {
  String id;
  String date;
  int age;
  bool isOpen;
  AutoGenerate({
    required this.id,
    required this.date,
    required this.age,
    required this.isOpen,
  });

  AutoGenerate copyWith({
    String? id,
    String? date,
    int? age,
    bool? isOpen,
  }) {
    return AutoGenerate(
      id: id ?? this.id,
      date: date ?? this.date,
      age: age ?? this.age,
      isOpen: isOpen ?? this.isOpen,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date': date,
      'age': age,
      'isOpen': isOpen,
    };
  }

  factory AutoGenerate.fromMap(Map<String, dynamic> map) {
    return AutoGenerate(
      id: map['id'] ?? '',
      date: map['date'] ?? '',
      age: map['age']?.toInt() ?? 0,
      isOpen: map['isOpen'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AutoGenerate.fromJson(String source) =>
      AutoGenerate.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AutoGenerate(id: $id, date: $date, age: $age, isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutoGenerate &&
        other.id == id &&
        other.date == date &&
        other.age == age &&
        other.isOpen == isOpen;
  }

  @override
  int get hashCode {
    return id.hashCode ^ date.hashCode ^ age.hashCode ^ isOpen.hashCode;
  }
}
