import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class SlidableListPage extends StatefulWidget {
  const SlidableListPage({Key? key}) : super(key: key);

  @override
  State<SlidableListPage> createState() => _SlidableListPageState();
}

class _SlidableListPageState extends State<SlidableListPage> {
  static final actionPaneTypes = <String, Widget>{
    'DrawerMotion': const DrawerMotion(),
    'BehindMotion': const BehindMotion(),
    'ScrollMotion': const ScrollMotion(),
    'StretchMotion': const StretchMotion(),
  };

  late List<Slidable> items;

  @override
  void initState() {
    super.initState();
    final mainActions = [
      SlidableAction(
        onPressed: (_) => showSnackbar("Archive"),
        label: 'Archive',
        foregroundColor: Colors.blue,
        backgroundColor: Colors.grey,
        icon: Icons.archive,
        autoClose: true,
      ),
      SlidableAction(
        onPressed: (_) => showSnackbar("Share"),
        label: 'Share',
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.indigo,
        icon: Icons.share,
        autoClose: false,
      )
    ];

    final secondaryActions = [
      SlidableAction(
        onPressed: (_) => showSnackbar("delete"),
        label: 'delete',
        foregroundColor: Colors.red,
        backgroundColor: Colors.lightBlueAccent,
        icon: Icons.delete,
        spacing: 3,
      ),
      SlidableAction(
        onPressed: (_) => showSnackbar("edit"),
        label: 'edit',
        backgroundColor: Colors.black26,
        foregroundColor: Colors.amber,
        icon: Icons.edit,
      )
    ];

    items = [
      for (var entry in actionPaneTypes.entries)
        Slidable(
          key: ValueKey(entry.key),
          startActionPane: ActionPane(
            motion: entry.value,
            children: mainActions,
            extentRatio: 0.5,
            openThreshold: 0.4,
            dismissible: const Text("D"),
          ),
          endActionPane: ActionPane(
            motion: entry.value,
            children: secondaryActions,
            extentRatio: 0.4,
            dragDismissible: false,
            closeThreshold: 0.8,
          ),
          child: ListTile(
            textColor: Colors.white,
            leading: const Icon(
              Icons.swipe,
              color: Colors.white,
            ),
            title: Text("ListTile with ${entry.key}"),
            subtitle: const Text("Swipe left and right to see actions"),
          ),
          useTextDirection: false,
          closeOnScroll: false,
          groupTag: const {},
        )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slidable List Widgets"),
      ),
      body: CodeViewerWidget(
        child: ListView(
          children: items,
        ),
        sourceFilePath: 'pages/catalog/lists_pages/slidable_list_page.dart',
      ),
    );
  }

  void showSnackbar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
