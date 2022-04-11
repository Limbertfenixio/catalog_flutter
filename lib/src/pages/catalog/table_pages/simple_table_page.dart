import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class SimpleTablePage extends StatelessWidget {
  const SimpleTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Table Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          child: Table(
            columnWidths: const {
              0: FractionColumnWidth(0.4),
              1: FlexColumnWidth(2),
              2: FixedColumnWidth(100),
            },
            defaultColumnWidth: const FixedColumnWidth(10.0),
            border: TableBorder.all(
              color: Colors.greenAccent,
              width: 2.0,
              style: BorderStyle.solid,
              borderRadius: BorderRadius.circular(30.0),
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  customContainer(Colors.red, 100.0),
                  customContainer(Colors.teal),
                  customContainer(Colors.amber),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                children: [
                  customContainer(Colors.red),
                  customContainer(Colors.teal, 50.0),
                  customContainer(Colors.amber),
                ],
              ),
              TableRow(
                children: [
                  customContainer(Colors.red),
                  customContainer(Colors.teal),
                  customContainer(Colors.amber, 150.0),
                ],
              )
            ],
          ),
        ),
        sourceFilePath: 'pages/catalog/table_pages/simple_table_page.dart',
      ),
    );
  }

  Widget customContainer(Color color, [double? height = 50]) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: height,
      color: color,
    );
  }
}
