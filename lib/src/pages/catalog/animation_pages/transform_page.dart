import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class TransformPage extends StatefulWidget {
  const TransformPage({Key? key}) : super(key: key);

  @override
  State<TransformPage> createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  Offset offset = Offset.zero;
  ScrollController mainScroll = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform Widgets"),
      ),
      body: CodeViewerWidget(
        child: Column(
          children: [
            Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateX(offset.dx)
                ..rotateY(offset.dy),
              alignment: Alignment.center,
              child: GestureDetector(
                excludeFromSemantics: true,
                behavior: HitTestBehavior.translucent,
                onDoubleTap: () {
                  setState(() {
                    offset = Offset.zero;
                  });
                },
                onPanUpdate: (details) {
                  setState(() {
                    offset = details.delta;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: Text("Matrix4.identity"),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.60,
              width: double.infinity,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 10.0),
                controller: ScrollController(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 90),
                    Transform(
                      transform: Matrix4.skewX(10.0),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        color: Colors.red,
                        child: Text("Matrix4.skewX"),
                      ),
                    ),
                    SizedBox(height: 90),
                    Transform(
                      transform: Matrix4.skewY(10.0),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        color: Colors.red,
                        child: Text("Matrix4.skewY"),
                      ),
                    ),
                    SizedBox(height: 90),
                    Transform(
                      transform: Matrix4.rotationX(40),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        color: Colors.red,
                        child: Text("Matrix4.rotationX"),
                      ),
                    ),
                    SizedBox(height: 90),
                    Transform(
                      transform: Matrix4.rotationY(60),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        color: Colors.red,
                        child: Text("Matrix4.rotationY"),
                      ),
                    ),
                    SizedBox(height: 90),
                    Transform(
                      transform: Matrix4.rotationZ(60),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        color: Colors.red,
                        child: Text("Matrix4.rotationZ"),
                      ),
                    ),
                    SizedBox(height: 90),
                    Transform(
                      transform: Matrix4.translationValues(60, 40, 100),
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        color: Colors.red,
                        child: Text("Matrix4.translationValues"),
                      ),
                    ),
                    SizedBox(height: 90),
                    Transform(
                      transform: Matrix4.diagonal3Values(2, 1, 2),
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        color: Colors.red,
                        child: Text("Matrix4.diagonal3Values"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/animation_pages/transform_page.dart',
      ),
    );
  }
}
