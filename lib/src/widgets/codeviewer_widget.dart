import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class CodeViewerWidget extends StatelessWidget {
  final Widget child;
  final String sourceFilePath;

  const CodeViewerWidget({
    Key? key,
    required this.child,
    required this.sourceFilePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: child,
      sourceFilePath: 'lib/src/$sourceFilePath',
      iconBackgroundColor: Colors.white,
      iconForegroundColor: Colors.pink,
      labelBackgroundColor: Theme.of(context).canvasColor,
      labelTextStyle: TextStyle(color: Colors.red),
      showLabelText: false,
      syntaxHighlighterStyle: SyntaxHighlighterStyle.darkThemeStyle().copyWith(
        commentStyle: TextStyle(color: Colors.grey),
        keywordStyle: TextStyle(color: Colors.tealAccent),
        classStyle: TextStyle(color: Colors.purpleAccent),
        numberStyle: TextStyle(color: Colors.orange),
        stringStyle: TextStyle(
          color: Colors.amberAccent,
        ),
      ),
    );
  }
}
