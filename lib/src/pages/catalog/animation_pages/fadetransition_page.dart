import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class FadeTransitionPage extends StatefulWidget {
  FadeTransitionPage({Key? key}) : super(key: key);

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> opacity;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      value: 0.5,
    );
    opacity = Tween(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FadeTransition Widgets"),
      ),
      body: CodeViewerWidget(
        child: Center(
          child: FadeTransition(
            opacity: opacity,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
        ),
        sourceFilePath:
            'pages/catalog/animation_pages/fadetransition_page.dart',
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.forward(from: 0.0);
        },
        label: const Text("Animated Opacity"),
      ),
    );
  }
}
