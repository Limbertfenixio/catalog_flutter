import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeAnimationsPage extends StatelessWidget {
  const HomeAnimationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Animated Container", "route": "/animated-container"},
      {"title": "Animated Builder ", "route": "/animated-builder"},
      {"title": "Animated Icon ", "route": "/animated-icon"},
      {"title": "Opacity & AnimatedOpacity ", "route": "/animated-opacity"},
      {"title": "FadeTransition ", "route": "/fade-transition"},
      {"title": "RotateTransition ", "route": "/rotate-transition"},
      {"title": "ScaleTransition ", "route": "/scale-transition"},
      {"title": "FadeInImage ", "route": "/fade-image"},
      {"title": "Transform ", "route": "/transform"},
      {"title": "Hero ", "route": "/hero"},
      {"title": "Animation Packages ", "route": "/animations-packages"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
