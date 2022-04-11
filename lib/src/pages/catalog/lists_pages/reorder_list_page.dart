import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ReorderListPage extends StatefulWidget {
  const ReorderListPage({Key? key}) : super(key: key);

  @override
  State<ReorderListPage> createState() => _ReorderListPageState();
}

class _ReorderListPageState extends State<ReorderListPage> {
  bool reverseSort = false;
  final List<String> items = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split('').toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reorder List Widgets"),
      ),
      body: CodeViewerWidget(
          child: ReorderableListView(
            scrollController: ScrollController(),
            buildDefaultDragHandles: true,
            proxyDecorator: (widget, index, animation) {
              return Opacity(
                opacity: animation.value,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text("item ${items[index]}"),
                ),
              );
            },
            header: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Reorder List"),
                InkWell(
                  onTap: () {
                    setState(() {
                      items.sort((a, b) => a.compareTo(b));
                    });
                  },
                  child: const Icon(
                    Icons.reorder,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            children: [
              for (var item in items)
                ListTile(
                  key: Key(item),
                  textColor: Colors.white,
                  title: Text('item $item'),
                )
            ],
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                final newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex;
                final item = items.removeAt(oldIndex);
                items.insert(newIdx, item);
              });
            },
          ),
          sourceFilePath: 'pages/catalog/lists_pages/reorder_list_page.dart'),
    );
  }
}
