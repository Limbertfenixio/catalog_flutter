import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ScaleTransitionPage extends StatefulWidget {
  const ScaleTransitionPage({Key? key}) : super(key: key);

  @override
  State<ScaleTransitionPage> createState() => _ScaleTransitionPageState();
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage>
    with SingleTickerProviderStateMixin {
  late final Animation<double> animation;
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<double>(begin: 1.0, end: 3.0).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScaleTransition Widgets"),
      ),
      body: CodeViewerWidget(
        child: Center(
          child: ScaleTransition(
            scale: animation,
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red,
                    Colors.blue,
                  ],
                ),
              ),
            ),
          ),
        ),
        sourceFilePath:
            'pages/catalog/animation_pages/scaletransition_page.dart',
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.value == 1.0
              ? controller.animateTo(0.0)
              : controller.forward(from: 0.0);
        },
        label: const Text("Rotate Container"),
      ),
    );
  }
}
