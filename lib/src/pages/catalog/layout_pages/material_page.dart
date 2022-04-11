import 'package:flutter/material.dart';

class MaterialLayoutPage extends StatelessWidget {
  const MaterialLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Widgets"),
      ),
      body: Center(
        child: Material(
          color: Colors.amberAccent,
          shadowColor: Colors.redAccent,
          textStyle: TextStyle(color: Colors.red),
          type: MaterialType.card,
          elevation: 50.0,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            side: BorderSide(color: Colors.black, width: 2),
          ),
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            child: Text(
              "Material Widget with shadow and shape border",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
