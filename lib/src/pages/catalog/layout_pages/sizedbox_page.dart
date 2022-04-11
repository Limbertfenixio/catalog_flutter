import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  const SizedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox Widgets"),
      ),
      body: SizedBox.expand(
        child: Card(
          child: Column(
            children: [
              Card(
                child: Text("SizedBox.expand"),
                color: Colors.yellowAccent,
              ),
              SizedBox(
                width: 350,
                height: 350,
                child: Card(
                  child: Text("SizedBox width: 350, height: 350,"),
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
          color: Colors.yellowAccent,
        ), /*  */
      ),
    );
  }
}
