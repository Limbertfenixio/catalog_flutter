import 'package:flutter/material.dart';
import 'package:widget_catalog/src/pages/catalog/Button_pages/home_button_page.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Page"),
      ),
      body: ListView(
        children: const [
          TypeButton(type: "MaterialButton"),
          TypeButton(type: "TextButton"),
          TypeButton(type: "ElevatedButton"),
          TypeButton(type: "OutlinedButton"),
          TypeButton(type: "IconButton"),
          TypeButton(type: "FabButton"),
          TypeButton(type: "DropdownButton"),
          TypeButton(type: "PopupMenuButton"),
        ],
      ),
    );
  }
}

class TypeButton extends StatelessWidget {
  final String type;
  const TypeButton({
    Key? key,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        type,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.blue,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeButtonPage(title: type),
          ),
        );
      },
    );
  }
}
