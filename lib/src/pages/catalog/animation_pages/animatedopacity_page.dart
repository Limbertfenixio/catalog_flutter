import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity & Opacity Widgets"),
      ),
      body: CodeViewerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Opacity(
              opacity: (opacity == 1) ? 0 : 1,
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ),
            ),
            AnimatedOpacity(
              opacity: (opacity == 1) ? 0 : 1,
              duration: Duration(milliseconds: 800),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.yellowAccent,
              ),
              curve: Curves.easeInOut,
            ),
            AnimatedOpacity(
              opacity: (opacity == 1) ? 0.5 : 1,
              duration: Duration(milliseconds: 800),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
              curve: Curves.slowMiddle,
            ),
          ],
        ),
        sourceFilePath:
            'pages/catalog/animation_pages/animatedopacity_page.dart',
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            opacity = (opacity == 1) ? 0 : 1;
          });
        },
        label: Text("Animated Opacity"),
      ),
    );
  }
}
