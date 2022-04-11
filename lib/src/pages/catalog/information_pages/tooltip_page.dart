import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class TooltipPage extends StatelessWidget {
  const TooltipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tooltip Widgets"),
      ),
      body: const CodeViewerWidget(
        child: Center(
          child: Tooltip(
            showDuration: Duration(seconds: 2),
            waitDuration: Duration(milliseconds: 500),
            height: 130.0,
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(5.0),
            verticalOffset: 10.0,
            preferBelow: false,
            excludeFromSemantics: true,
            enableFeedback: true,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            triggerMode: TooltipTriggerMode.tap,
            message: "Este es un tolTip normal de flutter",
            child: Text("Presiona para ver el tooltip"),
          ),
        ),
        sourceFilePath: 'pages/catalog/information_pages/tooltip_page.dart',
      ),
    );
  }
}
