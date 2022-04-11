import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class AbsorbPointerPage extends StatefulWidget {
  const AbsorbPointerPage({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerPage> createState() => _AbsorbPointerPageState();
}

class _AbsorbPointerPageState extends State<AbsorbPointerPage> {
  bool isAbsorbing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Absorb Pointer Widgets"),
      ),
      body: CodeViewerWidget(
        child: AbsorbPointer(
          absorbing: isAbsorbing,
          ignoringSemantics: true,
          child: Column(children: [
            ElevatedButton(
              child: const Text("Button1"),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text("Button2"),
              onPressed: () {},
            ),
            ElevatedButton(
              child: const Text("Button3"),
              onPressed: () {},
            ),
            Text("AbsorbPointer enable: $isAbsorbing"),
            Expanded(
                child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  textColor: Colors.white,
                  title: Text('Elemento: $index'),
                );
              },
            ))
          ]),
        ),
        sourceFilePath: 'pages/catalog/gestures_pages/absorb_pointer_page.dart',
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isAbsorbing = !isAbsorbing;
          });
        },
        child: Icon(
          isAbsorbing ? Icons.lock : Icons.lock_open,
        ),
      ),
    );
  }
}
