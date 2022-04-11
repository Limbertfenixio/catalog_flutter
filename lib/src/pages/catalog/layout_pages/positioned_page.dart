import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class PositionedPage extends StatelessWidget {
  const PositionedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Positioned Widgets"),
      ),
      body: CodeViewerWidget(
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: Colors.red,
                child: Text("Positioned.fill"),
              ),
            ),
            Positioned.fromRect(
              rect: Rect.fromCircle(center: Offset(100, 300), radius: 80),
              child: Container(
                color: Colors.green,
                child: Text("Positioned.fromRect"),
              ),
            ),
            Positioned.directional(
              start: 40,
              bottom: 100.0,
              textDirection: TextDirection.ltr,
              child: Text("Positioned.directional"),
            ),
            Positioned(
              right: 30,
              top: 150,
              child: Icon(
                Icons.drafts,
                size: 50,
              ),
            )
          ],
        ),
        sourceFilePath: 'pages/catalog/layout_pages/positioned_page.dart',
      ),
    );
  }
}
