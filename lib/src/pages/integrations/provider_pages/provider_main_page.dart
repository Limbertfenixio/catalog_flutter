import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_catalog/src/providers/user_provider/user_provider.dart';

class ProviderMainPage extends StatelessWidget {
  const ProviderMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProviderInfo = context.watch<UserProvider>();
    final userProviderEmit = context.read<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1 Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nombre State: ${userProviderInfo.name}",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30.0),
            Text(
              "Edad State: ${userProviderInfo.age}",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              userProviderEmit.increaseAge();
            },
            heroTag: "btn1",
            child: Icon(Icons.add),
          ),
          SizedBox(height: 20.0),
          FloatingActionButton(
            onPressed: () {
              userProviderEmit.age = 21;
            },
            heroTag: "btn2",
            child: Icon(Icons.cabin),
          ),
          SizedBox(height: 20.0),
          FloatingActionButton(
            onPressed: () {
              userProviderEmit.name = "Fernano";
            },
            heroTag: "btn3",
            child: Icon(Icons.person),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
