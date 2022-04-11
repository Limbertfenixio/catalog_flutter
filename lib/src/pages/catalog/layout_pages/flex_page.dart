import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex Widgets"),
      ),
      body: CodeViewerWidget(
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          verticalDirection: VerticalDirection.up,
          children: [
            Container(
              color: Colors.yellowAccent,
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
              color: Colors.greenAccent,
              width: 150,
              height: 100,
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/layout_pages/flexible_page.dart',
      ),
    );
  }
}
