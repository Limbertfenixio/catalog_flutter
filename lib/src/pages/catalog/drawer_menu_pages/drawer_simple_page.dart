import 'package:flutter/material.dart';

class DrawerSimplePage extends StatelessWidget {
  const DrawerSimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              arrowColor: Colors.red,
              margin: EdgeInsets.zero,
              accountName: Text(
                "pedro@gmail.com",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                "jajajaja",
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0, color: Colors.black),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  child: Text(
                    "B",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                CircleAvatar(
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            /*  DrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                children: [],
              ),
            ),
           */
            ListTile(
              title: Text("Elemento 1"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Elemento 2"),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
