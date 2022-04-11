import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class AlertPage extends StatelessWidget {
  //const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert Dialog'),
        ),
        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: ListTile.divideTiles(
              context: context,
              tiles: [
                const ListOptions(
                  title: "Simple Alert Dialog",
                  action: simpleAlert,
                ),
                const ListOptions(
                  title: "Confirm Alert Dialog",
                  action: confirmAlert,
                ),
                const ListOptions(
                  title: "Prompt Alert Dialog",
                  action: promptAlert,
                ),
                const ListOptions(
                  title: "Radio Alert Dialog",
                  action: radioAlert,
                ),
                const ListOptions(
                  title: "Checkbox Alert Dialog",
                  action: checkboxAlert,
                ),
                const ListOptions(
                  title: "Choose Alert Dialog",
                  action: chooseAlert,
                ),
                const ListOptions(
                  title: "Custom Alert Dialog",
                  action: customAlert,
                ),
              ],
            ).toList(),
          ),
        ));
  }
}

enum ChoiceValues { None, Callisto, Dione, Dragons, Bell, Shrink, Rotate }

class ListOptions extends StatelessWidget {
  final String title;
  final action;

  const ListOptions({Key? key, required this.title, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.indigo[50],
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.indigo[50]),
      ),
      onTap: () {
        action(context);
      },
    );
  }
}

void simpleAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Title Alert"),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "SubTitle Alert",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            content: const Text(
                "Message information alert in app and accept custom widget"),
          ));
}

void confirmAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text("Use location service?"),
      content: const Text(
          "Let us help apps determine location. This means sending anonymous location data to us, even when no apps are running."),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("DISAGREE"),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("AGREE"),
        ),
      ],
    ),
    barrierDismissible: true,
  );
}

void promptAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text("Login"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text("Enter a name for this new album your so keen on adding."),
          TextFormField(
            decoration: const InputDecoration(labelText: "Title"),
          )
        ],
      ),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("CANCEL"),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("SAVE"),
        ),
      ],
    ),
  );
}

void radioAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text("Select Ringtone"),
      content: const SingleChoiceList(),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("CANCEL"),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("SAVE"),
        ),
      ],
    ),
  );
}

class SingleChoiceList extends StatefulWidget {
  const SingleChoiceList({
    Key? key,
  }) : super(key: key);

  @override
  _SingleChoiceListState createState() => _SingleChoiceListState();
}

class _SingleChoiceListState extends State<SingleChoiceList> {
  List<String> ringtones = [
    "None",
    "Castillo",
    "Dione",
    "Dragons",
    "Bell",
    "Shrink",
    "Rotate",
    "asa",
    "asd",
    "sds",
    "sdfsdf",
    "asdfasdf",
    "asdfadasdfasdf",
    "sdfasdfasdf",
    "wewef",
    "Wefweff",
    "wqdw"
  ];

  //Object opts = {};
  // ChoiceValues? _choiceValues = ChoiceValues.None;
  String _choiceValues = "None";
  List<ChoiceValues> _listValues = ChoiceValues.values;
  @override
  Widget build(BuildContext context) {
    /* return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          RadioListTile(
            title: Text("Selected Ringtone"),
            value: ChoiceValues.None,
            groupValue: _choiceValues,
            onChanged: (ChoiceValues? val) {
              setState(() {
                _choiceValues = val;
              });
            },
          ),
        ],
      ).toList(),
    ); */
    final List<Widget> radio_widget = [];

    ringtones.forEach((element) {
      print(element);
      var radioOption = RadioListTile(
        contentPadding: EdgeInsets.zero,
        dense: false,
        title: Text(element.toString()),
        value: element,
        groupValue: _choiceValues,
        onChanged: (dynamic val) {
          setState(() {
            _choiceValues = val;
          });
        },
      );
      radio_widget..add(radioOption);
    });

    return SingleChildScrollView(
      //mainAxisSize: MainAxisSize.min,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: radio_widget,
      ),
    );
  }
}

void checkboxAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text("Select Label"),
      content: const MultipleChoiceList(),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("CANCEL"),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("SAVE"),
        ),
      ],
    ),
  );
}

class MultipleChoiceList extends StatefulWidget {
  const MultipleChoiceList({
    Key? key,
  }) : super(key: key);

  @override
  _MultipleChoiceListState createState() => _MultipleChoiceListState();
}

class _MultipleChoiceListState extends State<MultipleChoiceList> {
  List<String> ringtones = [
    "None",
    "Castillo",
    "Dione",
    "Dragons",
    "Bell",
    "Shrink",
    "Rotate",
    "asa",
    "asd",
    "sds",
    "sdfsdf",
    "asdfasdf",
    "asdfadasdfasdf",
    "sdfasdfasdf",
    "wewef",
    "Wefweff",
    "wqdw"
  ];

  List<String> ringtonesSelected = [];

  bool _choiceValues = true;
  List<ChoiceValues> _listValues = ChoiceValues.values;
  @override
  Widget build(BuildContext context) {
    final List<Widget> radio_widget = [];

    ringtones.forEach((element) {
      // print(element);
      var radioOption = CheckboxListTile(
        contentPadding: EdgeInsets.zero,
        dense: false,
        title: Text(element.toString()),
        value: ringtonesSelected.contains(element),
        // groupValue: _choiceValues,
        onChanged: (dynamic val) {
          print(val);
          setState(() {
            val
                ? ringtonesSelected.add(element)
                : ringtonesSelected.remove(element);
            //_choiceValues = val;
          });
        },
      );
      radio_widget..add(radioOption);
    });

    return SingleChildScrollView(
      //mainAxisSize: MainAxisSize.min,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: radio_widget,
      ),
    );
  }
}

void chooseAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text("Choose Alert Title"),
      contentPadding: EdgeInsets.zero,
      content: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text("user@example.com"),
              onTap: () {
                Navigator.pop(context, "user@example.com");
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text("user2@example.com"),
              onTap: () => Navigator.pop(context, 'user2@example.com'),
            ),
            ListTile(
              leading: const Icon(Icons.add_circle),
              title: const Text("Add Account"),
              onTap: () => Navigator.pop(context, 'Add Account'),
            ),
          ],
        ),
      ),
    ),
  );
}

void customAlert(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      title: Container(
        //constraints: BoxConstraints.loose(Size.zero),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_alert_outlined,
              color: Colors.indigo[50],
              size: 40.0,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "OOPS...",
              style: TextStyle(
                color: Colors.indigo[50],
              ),
            ),
          ],
        ),
        padding: EdgeInsets.zero,
      ),
      content: Container(
        height: 150,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text("Something Went Wrong"),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Try Again",
                style: TextStyle(color: Colors.indigo[50]),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

void simpleDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: const Text('Simple Dialog Title'),
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text("user@example.com"),
          onTap: () {
            Navigator.pop(context, "user@example.com");
          },
        ),
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text("user2@example.com"),
          onTap: () => Navigator.pop(context, 'user2@example.com'),
        ),
        ListTile(
          leading: const Icon(Icons.add_circle),
          title: const Text("Add Account"),
          onTap: () => Navigator.pop(context, 'Add Account'),
        ),
      ],
    ),
  );
}

void timePicker(BuildContext context) {
  final DateTime now = DateTime.now();
  showTimePicker(
          context: context,
          confirmText: 'ACEPTAR',
          cancelText: 'CANCELAR',
          helpText: 'Seleccione un horario',
          initialTime: TimeOfDay(hour: now.hour, minute: now.minute))
      .then((value) {
    print(value!.format(context));
  });
}

void datePicker(BuildContext context) {
  showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      confirmText: 'ACEPTAR',
      cancelText: 'CANCELAR',
      helpText: 'Seleccione una fecha',
      locale: const Locale('es', 'ES'));
}

void customDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        height: 350.0,
        decoration: const BoxDecoration(
          color: Colors.redAccent,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/sad.png',
                  height: 120.0,
                  width: 120.0,
                ),
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: const Radius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'Esta seguro de salir?',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.only(right: 16, left: 16),
              child: Text(
                'Si presionas el boton de atras no podras continuar',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('No'),
                  textColor: Colors.white,
                ),
                const SizedBox(width: 8),
                RaisedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Aceptar'),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.red)),
                  textColor: Colors.redAccent,
                )
              ],
            )
          ],
        ),
      ),
      //backgroundColor: Color.fromRGBO(10, 124, 134, 10),
    ),
  );
}
