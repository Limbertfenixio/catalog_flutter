import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container Widgets"),
        ),
        body: Container(
          color: Colors.yellowAccent,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    "Container width: double.infinity, height: double.infinity"),
                Container(
                  margin: const EdgeInsets.all(12.0),
                  padding: const EdgeInsets.all(12.0),
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.5),
                  ),
                  constraints: BoxConstraints(
                    maxHeight: 150,
                  ),
                  child: Text(
                      "Container with BoxDecoration,\n ForegroundDecoration with opacity color \n Alignment topRight \n Maring 12.0 \n padding 12.0 \n BoxCotrains maxheight 150"),
                ),
                Container(
                  color: Colors.greenAccent,
                  width: 200,
                  height: 200,
                  transform: Matrix4.rotationZ(pi / 4),
                  child: Text("Container with transform rotationZ"),
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                        "https://abduzeedo.com/sites/default/files/styles/square_1x1/public/originals/57c3e1110189587.5fe708829182f.png?itok=IMWDyMqE",
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  child: Text(
                      "Container with Border.all() \n  BorderRadius.all()"),
                ),
                Container(
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    shape: BoxShape.circle,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.red,
                        offset: Offset(12, 15),
                        spreadRadius: 12.0,
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                  child: Text(
                      "Container with BoxShape.circle \n BoxShadow(blurRadius: 10)"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(top: 26.0, bottom: 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: const [Colors.red, Colors.blue],
                      tileMode: TileMode.repeated,
                    ),
                  ),
                  child: Text("Container with Linear Gradient"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(top: 26.0, bottom: 12),
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: const [Colors.green, Colors.amber, Colors.teal],
                      tileMode: TileMode.decal,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Text("Container with Radial Gradient"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(top: 26.0, bottom: 12),
                  decoration: BoxDecoration(
                    gradient: SweepGradient(
                      colors: const [Colors.green, Colors.amber, Colors.teal],
                      stops: [0.0, 0.25, 0.7],
                    ),
                  ),
                  child: Text(
                      "Container with Sweep Gradient, stops [0.0, 0.25, 0.7]"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(top: 26.0, bottom: 12),
                  foregroundDecoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.exclusion,
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.blue]),
                  ),
                  child: Text("Container with BlendMode.exclusion"),
                )
              ],
            ),
          ),
        ) /*  */
        );
  }
}
