import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Curve curve = Curves.linear;
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final width = rnd.nextInt(300) + 50;
    final height = rnd.nextInt(100) + 50;
    final radius = rnd.nextInt(100).toDouble() + 50;
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 20),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: width.toDouble(),
                height: height.toDouble(),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(r, g, b, 1),
                  borderRadius: BorderRadius.circular(radius),
                ),
                child: const Text("Animation Container"),
                curve: curve,
                onEnd: () {
                  print("end Animated Container");
                },
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 5.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.bounceIn;
                      });
                    },
                    child: const Text("BounceIn"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.bounceInOut;
                      });
                    },
                    child: const Text("bounceInOut"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.bounceOut;
                      });
                    },
                    child: const Text("bounceOut"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.decelerate;
                      });
                    },
                    child: const Text("decelerate"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.linear;
                      });
                    },
                    child: const Text("linear"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.ease;
                      });
                    },
                    child: const Text("ease"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeIn;
                      });
                    },
                    child: const Text("easeIn"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInBack;
                      });
                    },
                    child: const Text("easeInBack"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInCirc;
                      });
                    },
                    child: const Text("easeInCirc"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInCubic;
                      });
                    },
                    child: const Text("easeInCubic"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInExpo;
                      });
                    },
                    child: const Text("easeInExpo"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOut;
                      });
                    },
                    child: const Text("easeInOut"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutBack;
                      });
                    },
                    child: const Text("easeInOutBack"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutCirc;
                      });
                    },
                    child: const Text("easeInOutCirc"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutCubic;
                      });
                    },
                    child: const Text("easeInOutCubic"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutBack;
                      });
                    },
                    child: const Text("easeInOutBack"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutCubicEmphasized;
                      });
                    },
                    child: const Text("easeInOutCubicEmphasized"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutExpo;
                      });
                    },
                    child: const Text("easeInOutExpo"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutQuad;
                      });
                    },
                    child: const Text("easeInOutQuad"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.elasticIn;
                      });
                    },
                    child: const Text("elasticIn"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.elasticInOut;
                      });
                    },
                    child: const Text("elasticInOut"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.elasticOut;
                      });
                    },
                    child: const Text("elasticOut"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.slowMiddle;
                      });
                    },
                    child: const Text("slowMiddle"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.fastLinearToSlowEaseIn;
                      });
                    },
                    child: const Text("fastLinearToSlowEaseIn"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.fastOutSlowIn;
                      });
                    },
                    child: const Text("fastOutSlowIn"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.linearToEaseOut;
                      });
                    },
                    child: const Text("linearToEaseOut"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeInOutQuart;
                      });
                    },
                    child: const Text("easeInOutQuart"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeOutQuint;
                      });
                    },
                    child: const Text("easeOutQuint"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curve = Curves.easeOutSine;
                      });
                    },
                    child: const Text("easeOutSine"),
                  ),
                ],
              )
            ],
          ),
        ),
        sourceFilePath:
            'pages/catalog/animation_pages/animatedcontainer_page.dart',
      ),
    );
  }
}
