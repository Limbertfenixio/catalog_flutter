import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widgets"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
            flex: 3,
          ),
          Expanded(
            child: Container(
              color: Colors.yellowAccent,
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              color: Colors.greenAccent,
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
