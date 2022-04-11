import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class IntrinsicPage extends StatelessWidget {
  const IntrinsicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intrinsic Widgets"),
      ),
      body: CodeViewerWidget(
        sourceFilePath: 'pages/catalog/layout_pages/intrinsic_page.dart',
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Center(
            child: Column(
              children: [
                Text(
                  'IntrinsicWidth',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                IntrinsicWidth(
                  stepWidth: 30,
                  stepHeight: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Short")),
                      ElevatedButton(
                          onPressed: () {}, child: Text("a bit Longer")),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Longest text button")),
                    ],
                  ),
                ),
                Text(
                  'IntrinsicHeight',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                color: Colors.yellow,
                                height: 120,
                              ),
                              Container(
                                color: Colors.red,
                                height: 100,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
