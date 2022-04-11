import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class BottomAppBarPage extends StatefulWidget {
  const BottomAppBarPage({Key? key}) : super(key: key);

  @override
  State<BottomAppBarPage> createState() => _BottomAppBarPageState();
}

class _BottomAppBarPageState extends State<BottomAppBarPage> {
  bool isNotch = true;
  bool endDocket = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom AppBar Widgets"),
      ),
      body: CodeViewerWidget(
        child: Column(
          children: [
            ListTile(
              title: const Text("BottomAppbarNoth"),
              textColor: Colors.white,
              trailing: Switch(
                value: isNotch,
                onChanged: (bool value) {
                  setState(() {
                    isNotch = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("End Docked"),
              textColor: Colors.white,
              trailing: Switch(
                value: endDocket,
                onChanged: (bool value) {
                  setState(() {
                    endDocket = value;
                  });
                },
              ),
            )
          ],
        ),
        sourceFilePath: 'pages/catalog/appbar_pages/bottom_appbar_page.dart',
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: endDocket
          ? FloatingActionButtonLocation.endDocked
          : FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        elevation: 10.0,
        notchMargin: 10.0,
        shape: isNotch ? const CircularNotchedRectangle() : null,
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_time),
            ),
          ],
        ),
      ),
    );
  }
}
