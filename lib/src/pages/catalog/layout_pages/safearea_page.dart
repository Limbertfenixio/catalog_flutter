import 'package:flutter/material.dart';

class SafeareaPage extends StatelessWidget {
  const SafeareaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: SafeArea(
        child: SizedBox.expand(
          child: Card(
            color: Colors.greenAccent,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Safearea body"),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Volver"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
