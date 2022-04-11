import 'package:flutter/material.dart';
import 'package:responsive/responsive.dart';

class ResponsivePackagePage extends StatelessWidget {
  const ResponsivePackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Package"),
      ),
      body: ListView(
        children: [
          ResponsiveRow(
            columnsCount: 12,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FlexWidget(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: 100,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2021/12/02/02/59/mountains-6839521__340.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
                xs: 6,
                sm: 4,
                md: 3,
                lg: 3,
              ),
              FlexWidget(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: 100,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2021/11/09/15/32/christmas-6781762__340.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
                xs: 6,
                sm: 4,
                md: 3,
                lg: 3,
                lgLand: 2,
              ),
              FlexWidget(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: 100,
                  color: Colors.green,
                ),
                xs: 6,
                sm: 4,
                md: 3,
                lg: 3,
              ),
              FlexWidget(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: 100,
                  color: Colors.purple,
                ),
                xs: 6,
                sm: 4,
                md: 3,
                lg: 3,
              ),
              FlexWidget(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: 100,
                  color: Colors.cyan,
                ),
                xs: 6,
                sm: 4,
                md: 3,
                lg: 3,
                lgLand: 2,
              ),
              FlexWidget(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  height: 100,
                  color: Colors.yellow,
                ),
                xs: 6,
                sm: 4,
                md: 3,
                lg: 3,
              )
            ],
          ),
        ],
      ),
    );
  }
}
