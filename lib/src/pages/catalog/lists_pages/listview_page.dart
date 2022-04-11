import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Widgets"),
      ),
      body: CodeViewerWidget(
          child: ListView(
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            children: [
              ListTile(
                tileColor: Colors.white,
                title: const Text("List View Layout"),
                subtitle: const Text("My subtitle ListTile"),
                leading: const Icon(Icons.tapas),
                trailing: const Icon(Icons.import_contacts),
                isThreeLine: true,
                dense: true,
                visualDensity: VisualDensity.standard,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                style: ListTileStyle.list,
                selectedColor: Colors.amberAccent,
                selected: true,
                onLongPress: () {},
              ),
              ListTile(
                tileColor: Colors.white,
                selectedTileColor: Colors.black,
                title: const Text("List View Layout"),
                subtitle: const Text("My subtitle ListTile"),
                leading: const Icon(Icons.tapas),
                trailing: const Icon(Icons.import_contacts),
                visualDensity: VisualDensity.standard,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                style: ListTileStyle.list,
                iconColor: Colors.green,
                textColor: Colors.grey,
                focusColor: Colors.orange,
                hoverColor: Colors.orangeAccent,
                contentPadding: const EdgeInsets.all(12.0),
                enabled: true,
                enableFeedback: true,
                onTap: () {},
                horizontalTitleGap: 12.0,
                minVerticalPadding: 22.0,
                minLeadingWidth: 30.0,
              ),
              SizedBox(
                width: 400,
                height: 300,
                child: ListView.builder(
                  controller: ScrollController(),
                  itemCount: 5,
                  reverse: true,
                  itemExtent: 100.0,
                  primary: false,
                  addAutomaticKeepAlives: false,
                  addRepaintBoundaries: false,
                  addSemanticIndexes: false,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 400,
                          height: 80,
                          color: Colors.amber,
                          child: Text("List View Builder $index"),
                        ),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 400,
                height: 300,
                child: ListView.custom(
                  controller: ScrollController(),
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(12.0),
                  prototypeItem: const SizedBox(
                    height: 150,
                    width: 150,
                  ),
                  semanticChildCount: 40,
                  childrenDelegate: SliverChildListDelegate(
                    [
                      Container(
                        width: 400,
                        height: 100,
                        color: Colors.purple,
                        child: const Text("List View custom"),
                      ),
                      Container(
                        width: 400,
                        height: 100,
                        color: Colors.pink,
                        child: const Text("List View custom"),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 400,
                height: 300,
                child: ListView.separated(
                  controller: ScrollController(),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 400,
                      height: 80,
                      color: Colors.green,
                      child: Text("List View separated $index"),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.blueAccent,
                    );
                  },
                  cacheExtent: 100,
                  itemCount: 5,
                  restorationId: 'restorationId',
                  clipBehavior: Clip.antiAlias,
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
          sourceFilePath: 'pages/catalog/lists_pages/listview_page.dart'),
    );
  }
}
