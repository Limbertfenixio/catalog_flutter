import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class FractionallyBoxPage extends StatelessWidget {
  const FractionallyBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox Widgets"),
      ),
      body: CodeViewerWidget(
        child: FractionallySizedBox(
          alignment: Alignment.center,
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: Container(
            color: Colors.red,
          ),
        ),
        sourceFilePath: 'pages/catalog/layout_pages/fractionallybox_page.dart',
      ),
    );
  }
}
