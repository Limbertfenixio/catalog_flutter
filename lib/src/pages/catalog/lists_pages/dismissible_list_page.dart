import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class DismissibleListPage extends StatefulWidget {
  const DismissibleListPage({Key? key}) : super(key: key);

  @override
  State<DismissibleListPage> createState() => _DismissibleListPageState();
}

class _DismissibleListPageState extends State<DismissibleListPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(40, (i) => "Element $i");

    return Scaffold(
      appBar: AppBar(
        title: const Text("DismissibleList Widgets"),
      ),
      body: CodeViewerWidget(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final String item = items[index];
            return Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: const Icon(Icons.delete),
              ),
              secondaryBackground: Container(
                color: Colors.blue,
                alignment: Alignment.centerRight,
                child: const Icon(Icons.edit),
              ),
              confirmDismiss: (direction) async {
                if (direction == DismissDirection.endToStart) {
                  return false;
                }
                return true;
              },
              onResize: () {
                // print("Resize");
              },
              onUpdate: (details) {
                // print(details.direction);
              },
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("item removed"),
                ));
              },
              dismissThresholds: const {DismissDirection.startToEnd: 0.0},
              direction: DismissDirection.horizontal,
              resizeDuration: const Duration(milliseconds: 700),
              movementDuration: const Duration(milliseconds: 700),
              crossAxisEndOffset: 1.0,
              dragStartBehavior: DragStartBehavior.start,
              behavior: HitTestBehavior.translucent,
              child: ListTile(
                textColor: Colors.white,
                title: Text(item),
              ),
            );
          },
        ),
        sourceFilePath: 'pages/catalog/lists_pages/dismissible_list_page.dart',
      ),
    );
  }
}
