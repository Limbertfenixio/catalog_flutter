import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align Widgets"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: ElevatedButton(
                onPressed: () {}, child: Text("Alignment.topLeft")),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 6,
            child: ElevatedButton(
                onPressed: () {},
                child: Text("Alignment.bottomCenter -  heightFactor: 6,")),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
                onPressed: () {}, child: Text("Alignment.bottomRight")),
          ),
        ],
      ),
    );
  }
}
