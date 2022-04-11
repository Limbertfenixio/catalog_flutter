import 'package:flutter/material.dart';

class MisColoresWidget extends InheritedWidget {
  final Color color1;
  final Color color2;

  const MisColoresWidget({
    Key? key,
    required Widget child,
    required this.color1,
    required this.color2,
  }) : super(key: key, child: child);

  static MisColoresWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MisColoresWidget>();
  }

  @override
  bool updateShouldNotify(MisColoresWidget oldWidget) {
    return oldWidget.color1 != color1 || oldWidget.color2 != color2;
  }
}
