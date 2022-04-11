import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [
      Expanded(child: contents()),
      Expanded(child: contents()),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Builder Widgets"),
      ),
      body: CodeViewerWidget(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return (constraints.maxWidth < 600)
                ? Column(
                    children: children,
                  )
                : Row(
                    children: children,
                  );
          },
        ),
        sourceFilePath:
            'pages/catalog/responsive_pages/layout_builder_page.dart',
      ),
    );
  }

  Widget contents() {
    return Container(
      margin: const EdgeInsets.all(12.0),
      width: double.infinity,
      height: 200,
      color: Colors.red,
    );
  }
}
