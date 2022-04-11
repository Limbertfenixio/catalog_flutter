import 'package:flutter/material.dart';
import 'package:widget_catalog/src/pages/integrations/inherited_pages/data_shared.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class InheritPage extends StatefulWidget {
  const InheritPage({Key? key}) : super(key: key);

  @override
  State<InheritPage> createState() => _InheritPageState();
}

class _InheritPageState extends State<InheritPage> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return MisColoresWidget(
      color1: color1,
      color2: color2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Inherited Widget"),
        ),
        body: CodeViewerWidget(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              WidgetChild1(),
              WidgetChild2(),
            ],
          ),
          sourceFilePath:
              'pages/integrations/inherited_pages/inherited_page.dart',
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              color1 = Colors.green;
              color2 = Colors.lightBlue;
            });
          },
          child: const Icon(
            Icons.change_circle,
          ),
        ),
      ),
    );
  }
}

class WidgetChild1 extends StatelessWidget {
  const WidgetChild1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        context.dependOnInheritedWidgetOfExactType<MisColoresWidget>();

    return Container(
      width: 150,
      height: 150,
      color: color?.color1,
    );
  }
}

class WidgetChild2 extends StatelessWidget {
  const WidgetChild2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color =
        context.dependOnInheritedWidgetOfExactType<MisColoresWidget>();
    return Container(
      width: 150,
      height: 150,
      color: color?.color2,
    );
  }
}

class MisColoresWidgetExample extends InheritedWidget {
  final Color color1;
  final Color color2;

  const MisColoresWidgetExample({
    Key? key,
    required Widget child,
    required this.color1,
    required this.color2,
  }) : super(key: key, child: child);

  static MisColoresWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MisColoresWidget>();
  }

  @override
  bool updateShouldNotify(MisColoresWidget oldWidget) {
    return oldWidget.color1 != color1 || oldWidget.color2 != color2;
  }
}
