import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({Key? key}) : super(key: key);

  @override
  State<StreamBuilderPage> createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  StreamController<Color> colorStream = StreamController();
  int currentColor = -1;
  List<Color> colors = [
    Colors.red,
    Colors.amber,
    Colors.green,
    Colors.blue,
  ];

  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Builder Widgets"),
      ),
      body: CodeViewerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
              stream: colorStream.stream,
              builder: (context, AsyncSnapshot<Color> snapshot) {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text("Esperando data...."),
                      SizedBox(height: 20.0),
                      CircularProgressIndicator()
                    ],
                  );
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  return const Text("El stream ha finalizado..");
                }

                return Container(
                  width: 200,
                  height: 200,
                  color: snapshot.data,
                );
              },
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/async_pages/stream_builder_page.dart',
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (currentColor < colors.length - 1) {
            currentColor++;
            colorStream.sink.add(colors[currentColor]);
          } else {
            colorStream.close();
          }
        },
        child: const Icon(
          Icons.palette,
        ),
      ),
    );
  }
}
