import 'package:flutter/material.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ListWheelPage extends StatelessWidget {
  const ListWheelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Wheel Widgets"),
      ),
      body: CodeViewerWidget(
        child: ListWheelScrollView.useDelegate(
          controller: ScrollController(),
          diameterRatio: 2,
          perspective: 0.006,
          itemExtent: 75,
          offAxisFraction: 1.0,
          useMagnifier: true,
          magnification: 1.5,
          overAndUnderCenterOpacity: 0.7,
          squeeze: 1.2,
          onSelectedItemChanged: (index) {},
          renderChildrenOutsideViewport: true,
          clipBehavior: Clip.none,
          restorationId: 'restorationId',
          scrollBehavior: ClampingScrollBehavior(),
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              return ListTile(
                leading: Text("$index"),
                textColor: Colors.white,
                title: Text("Title $index"),
                subtitle: const Text("Description Here"),
              );
            },
            childCount: 100,
          ),
        ),
        sourceFilePath: 'pages/catalog/lists_pages/list_wheel_page.dart',
      ),
    );
  }
}
