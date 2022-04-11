import 'package:flutter/material.dart';

class ConstrainBoxPage extends StatelessWidget {
  const ConstrainBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainBox Widgets"),
      ),
      body: Column(
        children: [
          Text(
            "ConstrainedBox permite que un widget use el espacio restante como desee. \n Con BoxConstraints usted especifica cuánto espacio puede tener un widget: especifica min/ max de height/ width.BoxConstraints.expand usa una cantidad infinita (toda la disponible) de espacio a menos que se especifique:",
            style: TextStyle(color: Colors.white),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.expand(
              height: 300,
              width: 200,
            ),
            child: Card(
              child: Text(
                "BoxConstraints.expand(300 * 200)",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 200,
              maxWidth: 250,
              minHeight: 150,
              maxHeight: 200,
            ),
            child: Card(
              child: Text(
                "BoxConstraints(minWidth: 200,maxWidth: 250,minHeight: 150,maxHeight: 200,)",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
