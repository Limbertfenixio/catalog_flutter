import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class BasicAppBarPage extends StatelessWidget {
  const BasicAppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic AppBar Widgets"),
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.red,
          systemNavigationBarContrastEnforced: false,
          systemNavigationBarDividerColor: Colors.yellow,
          systemStatusBarContrastEnforced: false,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.red,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: CodeViewerWidget(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.read_more),
            automaticallyImplyLeading: false,
            title: const Text("Basic AppBar"),
            actions: const [
              SizedBox(width: 15),
              Icon(Icons.card_travel),
              SizedBox(width: 15),
              Icon(Icons.shop),
              SizedBox(width: 15),
              Icon(Icons.more_vert_rounded),
              SizedBox(width: 15),
            ],
            backgroundColor: Colors.red,
            foregroundColor: Colors.lightBlue[100],
            shadowColor: Colors.amberAccent,
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: const BorderSide(color: Colors.blue, width: 2.0),
            ),
            flexibleSpace: Container(
              alignment: Alignment.bottomCenter,
              color: Colors.lightBlue,
              width: 60,
              height: 60,
              child: const Text("Flexible Space"),
            ),
            bottom: PreferredSize(
              child: Container(
                color: Colors.green,
                width: 30,
                height: 30,
              ),
              preferredSize: const Size(50, 50),
            ),
            centerTitle: false,
            excludeHeaderSemantics: true,
            titleSpacing: 2.0,
            toolbarOpacity: .8,
            bottomOpacity: .5,
            toolbarHeight: 400,
            leadingWidth: 40.0,
          ),
        ),
        sourceFilePath: 'pages/catalog/appbar_pages/basic_appbar_page.dart',
      ),
    );
  }
}
