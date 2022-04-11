import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog/src/models/user_model.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _url = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  bool _pwdHide = true;
  bool stateSwitch1 = false;
  bool stateSwitch2 = false;
  bool? stateCheck1 = false;
  bool stateCheck2 = false;
  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
  int? radioValue = 0;

  var sendData = {"dew": "dew"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms And Validations'),
      ),
      body: CodeViewerWidget(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameCtrl,
                    style: const TextStyle(color: Colors.white),
                    maxLength: 10,
                    decoration: const InputDecoration(
                      labelText: "Nombre de usuario",
                      labelStyle: TextStyle(color: Colors.white),
                      counterStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Por favor introduce tu nombre';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(),
                      helperText: 'correo@correo.com',
                      labelText: "Correo electrónico",
                      helperStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }

                      if (!RegExp(
                              r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                          .hasMatch(value)) {
                        return 'Please enter a valid email Address';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _pwdHide,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.white),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _pwdHide = !_pwdHide;
                          });
                        },
                        icon: Icon(
                          _pwdHide ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _url,
                    keyboardType: TextInputType.url,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: "Sitio Web",
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'URL is required';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _phoneNumber,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: Colors.white),
                    maxLength: 7,
                    decoration: const InputDecoration(
                      labelText: "Phone number",
                      labelStyle: TextStyle(color: Colors.white),
                      counterStyle: TextStyle(color: Colors.white),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone number is required';
                      }
                      int? cant = int.tryParse(value);
                      if (cant! <= 44) {
                        return 'Phone number must be than 44';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("procesando la data");
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("procesando la data"),
                          ),
                        );

                        Map<String, dynamic> formData = {
                          'name': _nameCtrl.text,
                          'email': _email.text,
                          'password': _password.text,
                          'url': _url.text,
                          'phoneNumber': _phoneNumber.text,
                        };

                        var user = UsersModel.fromJson(formData);

                        if (kDebugMode) {
                          print(_nameCtrl.text);
                          print(user);
                        }
                      }
                    },
                    child: const Text("Enviar"),
                  ),
                  const SizedBox(height: 10),
                  const Text("Other Controls Form"),
                  const SizedBox(height: 10),
                  const Text("Switch"),
                  Switch(
                    value: stateSwitch1,
                    onChanged: (bool onChanged) {
                      setState(() {
                        stateSwitch1 = onChanged;
                      });
                    },
                    activeColor: Colors.purple,
                    activeTrackColor: Colors.red,
                    inactiveThumbColor: Colors.blue,
                    inactiveTrackColor: Colors.green,
                    splashRadius: 40.0,
                  ),
                  const Switch(
                    value: true,
                    onChanged: null,
                  ),
                  Switch(
                    value: stateSwitch2,
                    onChanged: (bool onChanged) {
                      setState(() {
                        stateSwitch2 = onChanged;
                      });
                    },
                    activeThumbImage:
                        const NetworkImage("https://picsum.photos/200"),
                    onActiveThumbImageError: (object, stacktrace) {},
                    inactiveThumbImage:
                        const NetworkImage("https://picsum.photos/200/300"),
                    onInactiveThumbImageError: (object, stacktrace) {},
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                  ),
                  const SizedBox(height: 10),
                  const Text("CheckBox"),
                  const SizedBox(height: 30),
                  Transform.scale(
                    scale: 3.0,
                    child: Checkbox(
                      value: stateCheck1,
                      tristate: true,
                      onChanged: (bool? onChanged) {
                        setState(() {
                          stateCheck1 = onChanged;
                        });
                      },
                      activeColor: Colors.amber,
                      checkColor: Colors.green,
                      splashRadius: 50,
                      visualDensity: VisualDensity.standard,
                      side: const BorderSide(
                        color: Colors.red,
                        width: 2.0,
                      ),
                      shape: const CircleBorder(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Checkbox(
                    value: null,
                    onChanged: null,
                    tristate: true,
                    activeColor: Colors.indigo,
                    checkColor: Colors.redAccent,
                    fillColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.first == MaterialState.disabled) {
                          return Colors.blueAccent;
                        } else if (states.first == MaterialState.selected) {
                          return Colors.cyan;
                        }
                        return Colors.greenAccent;
                      },
                    ),
                    side: const BorderSide(
                      color: Colors.greenAccent,
                      width: 2.0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Sliders"),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: Slider(
                          value: sliderVal1,
                          onChanged: (double onChanged) {
                            setState(() {
                              sliderVal1 = onChanged;
                            });
                          },
                          onChangeStart: (double onChanged) {},
                          onChangeEnd: (double onChanged) {},
                          min: 0.0,
                          max: 100.0,
                          activeColor: Colors.red,
                          inactiveColor: Colors.green,
                          thumbColor: Colors.amber,
                        ),
                      ),
                      Text(sliderVal1.toStringAsFixed(1)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Slider(
                          value: sliderVal2,
                          onChanged: (double onChanged) {
                            setState(() {
                              sliderVal2 = onChanged;
                            });
                          },
                          divisions: 5,
                          label: "${sliderVal2.round()}",
                          onChangeStart: (double onChanged) {},
                          onChangeEnd: (double onChanged) {},
                          semanticFormatterCallback: (double newValue) {
                            return '${newValue.round()} dollars';
                          },
                          min: 0.0,
                          max: 100.0,
                          activeColor: Colors.red,
                          inactiveColor: Colors.green,
                          thumbColor: Colors.amber,
                        ),
                      ),
                      Text(sliderVal2.toStringAsFixed(1)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("Progress Indicator"),
                  const SizedBox(height: 30),
                  const LinearProgressIndicator(
                    value: .4,
                    backgroundColor: Colors.amberAccent,
                    color: Colors.cyan,
                    semanticsLabel: "Label",
                    semanticsValue: "value",
                  ),
                  const SizedBox(height: 10),
                  const LinearProgressIndicator(
                    backgroundColor: Colors.amber,
                    color: Colors.blue,
                    minHeight: 20.0,
                    semanticsLabel: "Label",
                    semanticsValue: "value",
                  ),
                  const SizedBox(height: 10),
                  const CircularProgressIndicator(
                    value: .4,
                    backgroundColor: Colors.amberAccent,
                    color: Colors.cyan,
                    semanticsLabel: "Label",
                    semanticsValue: "value",
                  ),
                  const SizedBox(height: 10),
                  const CircularProgressIndicator(
                    backgroundColor: Colors.amber,
                    color: Colors.blue,
                    strokeWidth: 15.0,
                    semanticsLabel: "Label",
                    semanticsValue: "value",
                  ),
                  const SizedBox(height: 10),
                  const Text("Radio Group"),
                  const SizedBox(height: 30),
                  Row(
                    children: [0, 1, 2, 3]
                        .map(
                          (index) => Radio(
                            value: index,
                            groupValue: radioValue,
                            toggleable: true,
                            splashRadius: 40.0,
                            activeColor: Colors.red,
                            fillColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.isEmpty) {
                                  return Colors.red;
                                } else if (states.first ==
                                    MaterialState.selected) {
                                  return Colors.cyan;
                                }
                                return Colors.greenAccent;
                              },
                            ),
                            onChanged: (int? value) {
                              if (value != null) {
                                setState(() {
                                  radioValue = value;
                                });
                              }
                            },
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          ),
        ),
        sourceFilePath: 'pages/catalog/form_page.dart',
      ),
    );
  }
}
