import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/list_items_menu_widget.dart';

class HomeLayoutPage extends StatelessWidget {
  const HomeLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {"title": "Row & Column", "route": "/row-column"},
      {"title": "Wrap", "route": "/wrap"},
      {"title": "Flex", "route": "/flex"},
      {"title": "Stack", "route": "/stack"},
      {"title": "Positioned", "route": "/positioned"},
      {"title": "FractionallySizedBox", "route": "/fractionally-box"},
      {"title": "ConstrainedBox", "route": "/constrained"},
      {"title": "Container", "route": "/container"},
      {"title": "Material", "route": "/material"},
      {"title": "SafeArea", "route": "/safearea"},
      {"title": "IntrinsicWidth & IntrinsicHeight ", "route": "/intrinsic"},
      {"title": "Expanded", "route": "/expanded"},
      {"title": "Align", "route": "/align"},
      {"title": "Slivers", "route": "/slivers"},
      {"title": "SizedBox", "route": "/sizedbox"},
      {"title": "Flexible", "route": "/flexible"},
      {"title": "Spacer", "route": "/spacer"},
      {"title": "FittedBox", "route": "/fitted-box"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Widgets"),
      ),
      body: ListItemsWidgets(items: items),
    );
  }
}
