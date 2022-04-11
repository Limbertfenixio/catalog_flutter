import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class TextStandardPage extends StatelessWidget {
  const TextStandardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shader textGradient = LinearGradient(colors: [
      Color(0xff6f2dbd),
      Color(0xffa663cc),
      Color(0xFFb298dc),
    ]).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Scaffold(
      appBar: AppBar(
        title: Text("Text Standard Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          controller: ScrollController(),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Size Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "Text size using fontSize 32",
                style: TextStyle(fontSize: 32.0),
              ),
              Text(
                "Text size using scale factor",
                textScaleFactor: 3.0,
              ),
              Text(
                "Bold Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Italic Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "lorem ipsum dolor sit amet",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              Text(
                "Decoration Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                " TextDecoration.overline",
                style: TextStyle(decoration: TextDecoration.overline),
              ),
              Text(
                " TextDecoration.lineThrough",
                style: TextStyle(decoration: TextDecoration.lineThrough),
              ),
              Text(
                "TextDecoration.underline",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              Text(
                "TextDecoration.lineThrough - thicknes 2.0",
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 2.0,
                  decorationColor: Colors.red,
                ),
              ),
              Text(
                "TextDecorationStyle.dashed",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 3.0,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
              Text(
                "TextDecorationStyle.dotted",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 3.0,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.dotted,
                ),
              ),
              Text(
                "TextDecorationStyle.double",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 2.0,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.double,
                ),
              ),
              Text(
                " TextDecorationStyle.wavy",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 3.0,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
              Text(
                "TextDecorationStyle.solid",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 3.0,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              Text(
                "Alignment Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(" TextAlign.left", textAlign: TextAlign.left),
              Text(" TextAlign.center", textAlign: TextAlign.center),
              Text(" TextAlign.end", textAlign: TextAlign.end),
              Text(
                  "TextAlign.justify Lorem ipsum dolor sit amet consectetur adipisicing elit. Et, nam reprehenderit saepe sit.",
                  textAlign: TextAlign.justify),
              Text(
                "Font Family Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "Times New Roman Lorem ipsum dolor sit amet",
                style: TextStyle(
                  fontFamily: 'Times New Roman',
                ),
              ),
              Text(
                "Arial Lorem ipsum dolor sit amet",
                style: TextStyle(
                  fontFamily: 'Arial',
                ),
              ),
              Text(
                "Helvetica Lorem ipsum dolor sit amet",
                style: TextStyle(
                  fontFamily: 'Helvetica',
                ),
              ),
              Text(
                "Georgia Lorem ipsum dolor sit amet",
                style: TextStyle(
                  fontFamily: 'Georgia',
                ),
              ),
              Text(
                "Max Lines & Overflow Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "MaxLines: 2 -  TextOverflow.clip - softWrap: true Lorem ipsum dolor sit amet MaxLines: 2 -  TextOverflow.clip - softWrap: trueLorem ipsum dolor sit amet",
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
              SizedBox(height: 10.0),
              Text(
                "MaxLines: 1 -  TextOverflow.clip - softWrap: false Lorem ipsum dolor sit amet MaxLines: 1 -  TextOverflow.clip - softWrap: false Lorem ipsum dolor sit amet",
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.clip,
              ),
              SizedBox(height: 10.0),
              Text(
                "MaxLines: 2 -  TextOverflow.ellipsis - softWrap: true Lorem ipsum dolor sit amet MaxLines: 2 -  TextOverflow.ellipsis - softWrap: true Lorem ipsum dolor sit amet",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10.0),
              Text(
                "MaxLines: 2 -  TextOverflow.fade - softWrap: true Lorem ipsum dolor sit amet MaxLines: 2 -  TextOverflow.fade - softWrap: true Lorem ipsum dolor sit amet",
                maxLines: 2,
                overflow: TextOverflow.fade,
              ),
              Text(
                "Letter Spacing Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "letterSpacing: 2.0 Lorem ipsum dolor sit amet",
                style: TextStyle(
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                "letterSpacing: 3.0 Lorem ipsum dolor sit amet",
                style: TextStyle(
                  letterSpacing: 3.0,
                ),
              ),
              Text(
                "letterSpacing: 4.0 Lorem ipsum dolor sit amet",
                style: TextStyle(
                  letterSpacing: 4.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Word Spacing Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "wordSpacing: 2.0 Lorem ipsum dolor sit amet",
                style: TextStyle(
                  wordSpacing: 2.0,
                ),
              ),
              Text(
                "wordSpacing: 3.0 Lorem ipsum dolor sit amet",
                style: TextStyle(
                  wordSpacing: 3.0,
                ),
              ),
              Text(
                "wordSpacing: 4.0 Lorem ipsum dolor sit amet",
                style: TextStyle(
                  wordSpacing: 4.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "Coloring Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "color: Colors.red Lorem ipsum dolor sit amet",
                style: TextStyle(color: Colors.red),
              ),
              Text(
                "backgroundColor: Colors.yellow Lorem ipsum dolor sit amet",
                style: TextStyle(
                  color: Colors.blue,
                  backgroundColor: Colors.yellow,
                ),
              ),
              Text(
                "foreground: Paint()..shader = Shader Linear Gradient Lorem ipsum dolor sit amet",
                style: TextStyle(foreground: Paint()..shader = textGradient),
              ),
              Text(
                "background: Paint()..shader = Shader Linear Gradient Lorem ipsum dolor sit amet",
                style: TextStyle(background: Paint()..shader = textGradient),
              ),
              SizedBox(height: 10.0),
              Text(
                "Shadow Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              Text(
                "Shadow  Offset(1, 1) Lorem ipsum dolor sit amet",
                style: TextStyle(shadows: [
                  Shadow(
                    color: Colors.red,
                    offset: Offset(1, 1),
                    blurRadius: 1.0,
                  ),
                ]),
              ),
              SizedBox(height: 10),
              Text(
                "Shadow Offset(10, 10) blur 3.0 Lorem ipsum dolor",
                style: TextStyle(shadows: [
                  Shadow(
                    color: Colors.blue,
                    offset: Offset(10, 10),
                    blurRadius: 3.0,
                  ),
                ]),
              ),
              SizedBox(height: 10),
              Text(
                "Shadow Offset(10, 10) blur 3.0 Lorem ipsum dolor",
                style: TextStyle(shadows: [
                  Shadow(
                    color: Colors.greenAccent,
                    offset: Offset(10, 10),
                    blurRadius: 10.0,
                  ),
                ]),
              ),
              SizedBox(height: 10),
              Text(
                "Selectable Text",
                style: Theme.of(context).textTheme.headline1,
              ),
              Divider(
                thickness: 3.0,
                color: Colors.indigo,
              ),
              SelectableText(
                "Selectable Text you can select this text by tap and hold on this text",
                style: TextStyle(fontSize: 20),
                showCursor: true,
                toolbarOptions: ToolbarOptions(
                  copy: true,
                  cut: true,
                  paste: true,
                  selectAll: true,
                ),
                cursorColor: Colors.red,
                cursorWidth: 3,
                cursorRadius: Radius.circular(12),
                cursorHeight: 12,
                enableInteractiveSelection: true,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        sourceFilePath: 'pages/catalog/text_pages/textstandard_page.dart',
      ),
    );
  }
}
