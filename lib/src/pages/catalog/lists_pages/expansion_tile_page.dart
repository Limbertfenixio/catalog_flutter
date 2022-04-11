import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ExpansionTilePage extends StatelessWidget {
  const ExpansionTilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ExpansionTile Widgets"),
      ),
      body: CodeViewerWidget(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return EntryItem(entry: data[index]);
          },
        ),
        sourceFilePath: 'pages/catalog/lists_pages/expansion_tile_page.dart',
      ),
    );
  }
}

class Entry {
  final String title;
  List<Entry> children;

  Entry(this.title, [this.children = const []]);
}

List<Entry> data = [
  Entry(
    'Chapter A',
    [
      Entry(
        'Section A0',
      ),
      Entry('Section A1', [
        Entry(
          'SubSection A0',
        ),
      ]),
    ],
  ),
  Entry(
    'Chapter B',
  ),
  Entry(
    'Chapter C',
    [
      Entry(
        'Section C0',
      ),
      Entry('Section C1', [
        Entry(
          'SubSection C0',
        ),
      ]),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  final Entry entry;

  const EntryItem({Key? key, required this.entry}) : super(key: key);

  Widget _buildTile(Entry entry) {
    if (entry.children.isEmpty) {
      return ListTile(
        textColor: Colors.white,
        title: Text(entry.title),
      );
    }

    return ExpansionTile(
      key: PageStorageKey<Entry>(entry),
      leading: const Icon(
        Icons.menu,
        color: Colors.amber,
      ),
      title: Text(entry.title),
      subtitle: const Text("Mi subtitulo"),
      onExpansionChanged: (isExpanded) {
        // print("expanded: $isExpanded");
      },
      // trailing: Icon(Icons.ad_units),
      initiallyExpanded: false,
      maintainState: false,
      tilePadding: const EdgeInsets.all(12.0),
      expandedCrossAxisAlignment: CrossAxisAlignment.center,
      expandedAlignment: Alignment.centerRight,
      childrenPadding: const EdgeInsets.all(12.0),
      children: entry.children.map(_buildTile).toList(),
      collapsedBackgroundColor: Colors.pinkAccent,
      collapsedTextColor: Colors.amber,
      collapsedIconColor: Colors.amber,
      backgroundColor: Colors.purple,
      iconColor: Colors.red,
      textColor: Colors.white,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTile(entry);
  }
}
