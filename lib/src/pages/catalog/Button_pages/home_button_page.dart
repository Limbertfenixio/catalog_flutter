import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class HomeButtonPage extends StatelessWidget {
  final String title;

  const HomeButtonPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget showWidget;
    switch (title) {
      case "TextButton":
        showWidget = const TextButtonWidget();
        break;
      case "ElevatedButton":
        showWidget = const ElevatedButtonWidget();
        break;
      case "OutlinedButton":
        showWidget = const OutlinedButtonWidget();
        break;
      case "IconButton":
        showWidget = const IconButtonWidget();
        break;
      case "FabButton":
        showWidget = const FabButtonWidget();
        break;
      case "DropdownButton":
        showWidget = const DropDownButtonWidget();
        break;
      case "PopupMenuButton":
        showWidget = const PopupMenuButtonWidget();
        break;
      default:
        showWidget = const TextButtonWidget();
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: showWidget,
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text(
                "Disabled",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: null,
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: const Text("Enabled"),
              onPressed: () {},
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  IntrinsicWidth(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                        primary: Colors.white,
                      ),
                      child: const Text(
                        "Gradient",
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.amber,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.camera,
                color: Colors.white,
              ),
              label: const Text("Icon TextButton"),
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: null,
            child: const Text(
              "Disabled",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              primary: Colors.red,
            ),
            onPressed: () {},
            child: const Text(
              "Enabled",
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              elevation: 8.0,
            ),
            onPressed: () {},
            child: const Text(
              "Rounded",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.camera),
              label: const Text("Icon Button"))
        ],
      ),
    );
  }
}

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: null,
            child: const Text(
              "Disabled",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.red,
              onSurface: Colors.green,
              shape: RoundedRectangleBorder(
                //side: BorderSide(color: Colors.red, width: 10),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ).copyWith(
              side: MaterialStateProperty.resolveWith(
                (Set states) {
                  return const BorderSide(
                    color: Colors.red,
                    width: 1,
                  ); // Defer to the widget's default.
                },
              ),
            ),
            onPressed: () {},
            child: const Text("Enabled"),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              primary: Colors.green,
              onSurface: Colors.green,
              shape: RoundedRectangleBorder(
                //side: BorderSide(color: Colors.red, width: 10),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ).copyWith(
              side: MaterialStateProperty.resolveWith(
                (Set states) {
                  if (states.contains(MaterialState.pressed)) {
                    return BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 1,
                    );
                  }

                  return const BorderSide(
                    color: Colors.lightGreen,
                    width: 1,
                  ); // Defer to the widget's default.
                },
              ),
            ),
            onPressed: () {},
            child: const Text("Change Color Pressed"),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20)),
            onPressed: () {},
            icon: const Icon(Icons.camera),
            label: const Text("Icon Button"),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                colors: [Colors.red, Colors.yellow, Colors.green],
              ),
            ),
            child: Container(
              color: Colors.indigo,
              margin: const EdgeInsets.all(4),
              child: OutlinedButton(
                child: const Text(
                  "Gradient",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Tooltip IconButton",
              style: TextStyle(color: Colors.white)),
          IconButton(
            icon: const Icon(Icons.voice_chat, color: Colors.white, size: 30),
            tooltip: "Tooltip with Icon Button",
            onPressed: () {},
          ),
          const SizedBox(height: 40),
          const Text("Filled Background",
              style: TextStyle(color: Colors.white)),
          Material(
            color: Colors.transparent,
            child: Center(
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Colors.deepOrange,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: const Icon(Icons.android, size: 30),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text("Disabled IconButton",
              style: TextStyle(color: Colors.white)),
          const IconButton(
            icon: Icon(
              Icons.android,
              size: 30,
              color: Colors.green,
            ),
            color: Colors.white,
            tooltip: "Disabled",
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class FabButtonWidget extends StatelessWidget {
  const FabButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "FAB Simple",
            style: TextStyle(color: Colors.white),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "FAB Tooltip",
            style: TextStyle(color: Colors.white),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: "Pressed Tooltip",
          ),
          const SizedBox(height: 30),
          const Text(
            "FAB Extended",
            style: TextStyle(color: Colors.white),
          ),
          FloatingActionButton.extended(
            backgroundColor: Colors.red,
            onPressed: () {},
            label: Row(
              children: const [
                Text(
                  "FAB Extended",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
            tooltip: "Pressed Tooltip",
          ),
          const SizedBox(height: 30),
          const Text(
            "FAB Large",
            style: TextStyle(color: Colors.white),
          ),
          FloatingActionButton.large(
            backgroundColor: Colors.amber,
            onPressed: () {},
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: "Pressed Tooltip",
          ),
          const SizedBox(height: 30),
          const Text(
            "FAB small",
            style: TextStyle(color: Colors.white),
          ),
          FloatingActionButton.small(
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            tooltip: "Pressed Tooltip",
          ),
        ],
      ),
    );
  }
}

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({Key? key}) : super(key: key);

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  static const items = ['Rusia', 'China', 'EE UU', 'Bolivia'];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = items.map(
    (String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      );
    },
  ).toList();

  String value1 = 'Rusia';
  String? value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CodeViewerWidget(
        child: Column(
          children: [
            ListTile(
              textColor: Colors.white,
              title: const Text("DropDownButton default"),
              trailing: DropdownButton(
                dropdownColor: Colors.black,
                enableFeedback: true,
                value: value1,
                iconEnabledColor: Colors.red,
                items: _dropDownMenuItems,
                focusColor: Colors.amber,
                isExpanded: false,
                borderRadius: BorderRadius.circular(22.0),
                alignment: AlignmentDirectional.centerEnd,
                isDense: false,
                itemHeight: 100.0,
                onChanged: (String? value) {
                  setState(() {
                    value1 = value!;
                  });
                },
              ),
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text("DropDownButton hint"),
              trailing: DropdownButton(
                dropdownColor: Colors.black,
                hint: const Text(
                  'Select',
                  style: TextStyle(color: Colors.grey),
                ),
                items: _dropDownMenuItems,
                onChanged: (String? value) {
                  setState(() {
                    value1 = value!;
                  });
                },
              ),
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text("DropDownButton disabled"),
              trailing: DropdownButton(
                dropdownColor: Colors.black,
                disabledHint: const Text(
                  'disabled',
                  style: TextStyle(color: Colors.grey),
                ),
                iconDisabledColor: Colors.greenAccent,
                items: _dropDownMenuItems,
                onChanged: null,
                onTap: () {},
                elevation: 12,
              ),
            ),
            ListTile(
              textColor: Colors.white,
              title: const Text("DropDownButton custom"),
              trailing: DropdownButton(
                dropdownColor: Colors.black,
                disabledHint: const Text(
                  'custom',
                  style: TextStyle(color: Colors.grey),
                ),
                iconDisabledColor: Colors.amber,
                items: _dropDownMenuItems,
                onChanged: null,
                icon: const Icon(Icons.access_alarm_rounded),
                underline: const SizedBox(width: 2),
              ),
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/Button_pages/home_button_page.dart',
      ),
    );
  }
}

class PopupMenuButtonWidget extends StatefulWidget {
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  State<PopupMenuButtonWidget> createState() => _PopupMenuButtonWidgetState();
}

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  static const items = ['Rusia', 'China', 'EE UU', 'Bolivia'];
  final List<PopupMenuItem<String>> _popupMenuItems = items.map(
    (String value) {
      return PopupMenuItem<String>(value: value, child: Text(value));
    },
  ).toList();

  String value1 = 'Rusia';
  String? value2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CodeViewerWidget(
        child: Column(
          children: [
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: const Text("DropDownButton custom"),
              trailing: PopupMenuButton(
                initialValue: "InitialValue",
                color: Colors.white,
                elevation: 12,
                padding: const EdgeInsets.all(14.0),
                tooltip: "Tooltip Info",
                offset: const Offset(122, 101),
                enabled: true,
                enableFeedback: true,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.red,
                    width: 9.0,
                  ),
                  borderRadius: BorderRadius.circular(22),
                ),
                onCanceled: () {},
                icon: const Icon(Icons.menu_open_sharp),
                iconSize: 22,
                onSelected: (String? value) {},
                itemBuilder: ((context) => _popupMenuItems),
              ),
            ),
          ],
        ),
        sourceFilePath: 'pages/catalog/Button_pages/home_button_page.dart',
      ),
    );
  }
}
