import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class SpacerPage extends StatelessWidget {
  const SpacerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spacer Widgets"),
      ),
      body: CodeViewerWidget(
        child: Column(
          children: [
            Text(
                """podemos hacer uso de este widget para establecer una separación entre los widgets que conforman el Row/Column. \n """),
            Text(
                """Si no empleamos el parámetro flex, cogerá el espacio en blanco total que encuentre en el MainAxis \n """),
            Text(
                """Si empleamos el parámetro flex, dividirá el espacio vacío total en el MainAxis por la suma de todos los Spacer que encuentre con sus respectivos flex (si no se establece tendrá el valor de 1) y asignará a cada Spacer el número flex indicado. """),
            SizedBox(height: 10),
            Row(
              children: [
                Spacer(flex: 1),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text("Flex: 3"),
                ),
                Spacer(flex: 3),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text("Flex: 2"),
                ),
                Spacer(flex: 2),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text("Flex: 1"),
                ),
                Spacer(flex: 1),
              ],
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/layout_pages/spacer_page.dart',
      ),
    );
  }
}
