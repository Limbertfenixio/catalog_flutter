import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widgets"),
      ),
      body: CodeViewerWidget(
        child: Stack(
          fit: StackFit.expand,
          children: const [
            Material(color: Colors.yellowAccent),
            Banner(message: "Top Start", location: BannerLocation.topStart),
            Banner(message: "Top End", location: BannerLocation.topEnd),
            Banner(
                message: "Bottom Start", location: BannerLocation.bottomStart),
            Banner(message: "Bottom End", location: BannerLocation.bottomEnd),
            Positioned(
              top: 0,
              left: 50,
              child: Icon(Icons.star, size: 50),
            ),
            Positioned(
              top: 240,
              right: 70,
              child: Icon(Icons.cabin, size: 50),
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/layout_pages/stack_page.dart',
      ),
    );
  }
}
