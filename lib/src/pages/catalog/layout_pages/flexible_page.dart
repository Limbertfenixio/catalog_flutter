import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible Widgets"),
      ),
      body: CodeViewerWidget(
        child: Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.red,
                child: Container(
                  color: Colors.indigo,
                  child: Text("Flex 2 \n FlexFit tight "),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: double.infinity,
                color: Colors.yellow,
                child: Text("Flex 1 \n FlexFit tight "),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                width: 50,
                color: Colors.green,
                child: Text("Flex 2 \n FlexFit loose "),
              ),
            )
          ],
        ),
        sourceFilePath: 'pages/catalog/layout_pages/flexible_page.dart',
      ),
    );
  }
}
