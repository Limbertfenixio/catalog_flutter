import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _name = "Lim";
  int _age = 1;

  String get name {
    return _name;
  }

  set name(String name) {
    _name = name;
    notifyListeners();
  }

  int get age {
    return _age;
  }

  set age(int age) {
    _age = age;
    notifyListeners();
  }

  void increaseAge() {
    _age++;
    notifyListeners();
  }
}
