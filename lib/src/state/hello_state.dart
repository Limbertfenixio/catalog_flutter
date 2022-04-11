import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final welcomeProvider = Provider(((ref) => 'Welcome to Riverpod'));
final greetingsProvider = Provider((ref) => 'Hello Friend Lim');
final counterProvider = ChangeNotifierProvider((ref) => CounterNotifier());

class CounterNotifier extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void incrementValue() {
    _value++;
    notifyListeners();
  }
}
