import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class RowAndColumnPage extends StatelessWidget {
  const RowAndColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Column Widgets"),
      ),
      body: CodeViewerWidget(
        sourceFilePath: 'pages/catalog/layout_pages/rowcolumn_page.dart',
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Row Widget",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                "MainAxisAlignment.start - CrossAxisAlignment.start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "MainAxisAlignment.center - CrossAxisAlignment.center",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "MainAxisAlignment.end - CrossAxisAlignment.end",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "MainAxisAlignment.spaceBetween - CrossAxisAlignment.stretch",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "MainAxisAlignment.spaceAround",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "MainAxisAlignment.spaceEvenly",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "CrossAxisAlignment.baseline - TextDirection.rtl",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "Baseline",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      "Baseline",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              Text(
                "MainAxisSize.min",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Baseline",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      "Baseline",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              Text(
                "MainAxisSize.max",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Baseline",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      "Baseline",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              Text(
                "Column - MainAxisAlignment.start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "Column - MainAxisAlignment.center - CrossAxisAlignment.center",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 200,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
              Text(
                "Column - MainAxisAlignment.end -  CrossAxisAlignment.end",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                color: Colors.yellow,
                height: 200,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
