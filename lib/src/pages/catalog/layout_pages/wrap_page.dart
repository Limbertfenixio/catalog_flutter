import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Widgets"),
      ),
      body: CodeViewerWidget(
        child: Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.spaceAround,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: 150,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 150,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 150,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 150,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 150,
              height: 100,
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/layout_pages/wrap_page.dart',
      ),
    );
  }
}
