import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class RotateTransitionPage extends StatefulWidget {
  const RotateTransitionPage({Key? key}) : super(key: key);

  @override
  State<RotateTransitionPage> createState() => _RotateTransitionPageState();
}

class _RotateTransitionPageState extends State<RotateTransitionPage>
    with SingleTickerProviderStateMixin {
  late final Animation<double> animation;
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = CurvedAnimation(parent: controller, curve: Curves.elasticOut);
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
        title: const Text("RotateTransition Widgets"),
      ),
      body: CodeViewerWidget(
        child: Center(
          child: RotationTransition(
            turns: animation,
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
            'pages/catalog/animation_pages/rotatetransition_page.dart',
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.forward(from: 0.0);
        },
        label: const Text("Rotate Container"),
      ),
    );
  }
}
