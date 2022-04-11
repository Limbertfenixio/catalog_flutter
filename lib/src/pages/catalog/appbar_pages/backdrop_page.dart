import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class BackdropPage extends StatelessWidget {
  const BackdropPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Backdrop Widgets"),
      ),
      body: CodeViewerWidget(
        child: BackdropScaffold(
          appBar: BackdropAppBar(
            toolbarHeight: 50.0,
            backgroundColor: Colors.red,
          ),
          backLayer: Center(
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text("Back Layer Backdrop"),
            ),
          ),
          frontLayer: Center(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Text("Front Layer Backdrop"),
            ),
          ),
          subHeader: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 150,
            color: Colors.orange,
            child: const Text("SubHeader Backdrop"),
          ),
          headerHeight: 120.0,
          backLayerBackgroundColor: Colors.blue,
          frontLayerBackgroundColor: Colors.amber,
          backgroundColor: Colors.greenAccent,
          frontLayerBorderRadius: BorderRadius.zero,
          subHeaderAlwaysActive: true,
          frontLayerElevation: 10,
          stickyFrontLayer: true,
          revealBackLayerAtStart: true,
          animationCurve: Curves.bounceInOut,
          extendBody: true,
          extendBodyBehindAppBar: false,
        ),
        sourceFilePath: 'pages/catalog/appbar_pages/backdrop_page.dart',
      ),
    );
  }
}
