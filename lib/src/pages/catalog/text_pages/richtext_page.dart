import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class RichTextPage extends StatelessWidget {
  const RichTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RichText Widgets"),
      ),
      body: CodeViewerWidget(
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            softWrap: true,
            overflow: TextOverflow.clip,
            maxLines: 12,
            textWidthBasis: TextWidthBasis.parent,
            text: TextSpan(
              style: const TextStyle(fontSize: 30),
              children: [
                const TextSpan(
                  text:
                      'The rich-text widget displays text that uses multiple different styles',
                  style: TextStyle(
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const TextSpan(
                  text: 'The text',
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    decorationThickness: 2.87,
                  ),
                ),
                TextSpan(
                  text:
                      'To display is described using a tree of TextSpan objects.',
                  style: TextStyle(
                    color: Colors.black,
                    background: Paint()..color = Colors.amber,
                    height: 2.0,
                  ),
                ),
                TextSpan(
                  text:
                      'Each of which has an associated style that is used for that subtree.',
                  style: TextStyle(
                    foreground: Paint()..color = Colors.blue,
                    letterSpacing: 3.0,
                    wordSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        sourceFilePath: 'pages/catalog/text_pages/richtext_page.dart',
      ),
    );
  }
}
