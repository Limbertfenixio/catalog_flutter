import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class AnimatedBuilderPage extends StatefulWidget {
  AnimatedBuilderPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage>
    with TickerProviderStateMixin {
  late final AnimationController controllerTranslate;
  late final AnimationController controllerRotate;
  late final AnimationController controllerScale;
  late final Animation<double> animationTranslate;
  late final Animation<double> animationRotate;
  late final Animation<double> animationScale;
  late final Animation<double> animationOpacity;

  @override
  void initState() {
    super.initState();
    controllerTranslate = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animationTranslate = Tween(begin: 0.0, end: 100.0).animate(
      CurvedAnimation(parent: controllerTranslate, curve: Curves.easeInCubic),
    );
    animationOpacity = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: controllerTranslate, curve: Curves.linear),
    );

    controllerRotate = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    animationRotate = Tween(begin: 0.0, end: 2 * pi).animate(
      CurvedAnimation(parent: controllerRotate, curve: Curves.bounceInOut),
    );

    controllerScale = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animationScale = Tween(begin: 1.0, end: 2.0).animate(
      CurvedAnimation(parent: controllerScale, curve: Curves.elasticInOut),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controllerTranslate.dispose();
    controllerRotate.dispose();
    controllerScale.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Builder Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedBuilder(
                animation: controllerTranslate,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(
                        animationTranslate.value, animationTranslate.value),
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 100),
                      opacity: animationOpacity.value,
                      child: child,
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(12.0),
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                ),
              ),
              AnimatedBuilder(
                animation: controllerRotate,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: animationRotate.value,
                    child: child,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(12.0),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.blue],
                    ),
                  ),
                ),
              ),
              AnimatedBuilder(
                animation: controllerScale,
                builder: (context, child) {
                  return Transform.scale(
                    scale: animationScale.value,
                    child: child,
                  );
                },
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controllerTranslate.forward(from: 0.0).whenCompleteOrCancel(
                    () {
                      controllerTranslate.reverse();
                    },
                  );
                },
                child: Text('AnimatedBuilder Transform.translate'),
              ),
              ElevatedButton(
                onPressed: () {
                  controllerRotate.forward(from: 0.0).whenCompleteOrCancel(
                    () {
                      controllerRotate.animateTo(0.0);
                    },
                  );
                },
                child: Text('AnimatedBuilder Transform.rotate'),
              ),
              ElevatedButton(
                onPressed: () {
                  controllerScale.forward(from: 0.0).whenCompleteOrCancel(
                    () {
                      controllerScale.reset();
                    },
                  );
                },
                child: Text('AnimatedBuilder Transform.scale'),
              ),
            ],
          ),
        ),
        sourceFilePath:
            'pages/catalog/animation_pages/animatedbuilder_page.dart',
      ),
    );
  }
}
