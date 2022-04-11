import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class FadeInImagePage extends StatelessWidget {
  const FadeInImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FadeInImage Widgets"),
      ),
      body: CodeViewerWidget(
        child: Center(
          child: FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(
              "https://cursa.app/img/share/imagem_compartilhamento_es.webp",
            ),
            imageErrorBuilder: (context, object, stacktrace) {
              return Image.asset("assets/jar-loading.gif");
            },
            placeholderErrorBuilder: (context, object, stacktrace) =>
                CircularProgressIndicator(),
            fadeInDuration: Duration(milliseconds: 1000),
            fadeOutDuration: Duration(milliseconds: 1000),
            fadeOutCurve: Curves.bounceIn,
          ),
        ),
        sourceFilePath: 'pages/catalog/animation_pages/fadeinimage_page.dart',
      ),
    );
  }
}
