import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FittedBox Widgets"),
      ),
      body: CodeViewerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 250,
              height: 200,
              color: Colors.blue,
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.bottomLeft,
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  "https://api.lorem.space/image/game?w=150&h=150&hash=o6lgrj0m",
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: FittedBox(
                fit: BoxFit.cover,
                clipBehavior: Clip.antiAlias,
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  child: const Text("Fitted"),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
        sourceFilePath: 'pages/catalog/layout_pages/fittedbox_page.dart',
      ),
    );
  }
}
