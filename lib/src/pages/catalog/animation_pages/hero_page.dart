import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_catalog/src/utils/navigation_util.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  goToPage(context, '/hero-second');
                },
                child: Hero(
                  tag: 'logo',
                  transitionOnUserGestures: true,
                  placeholderBuilder: (context, heroSize, child) {
                    return Opacity(
                      opacity: 0.2,
                      child: child,
                    );
                  },
                  child: Image.network(
                    "https://atlas-content-cdn.pixelsquid.com/theme%2F2303321687694775347%2F%24c8cmlzqaekl-Homepage_IMG_sm.jpg",
                    fit: BoxFit.cover,
                    width: 250,
                    height: 150,
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  goToPage(context, '/hero-second');
                },
                child: Hero(
                  tag: 'rotation',
                  transitionOnUserGestures: true,
                  flightShuttleBuilder: (flightContext,
                      animation,
                      flightDirection,
                      fromHeroContext,
                      BuildContext toHeroContext) {
                    final Widget toHero = toHeroContext.widget;
                    return RotationTransition(
                      turns: animation,
                      child: toHero,
                    );
                  },
                  child: Image.network(
                    "https://atlas-content-cdn.pixelsquid.com/theme%2F2318497111219377313%2F%24w2qzcl0ajfl-Homepage_IMG_sm.jpg",
                    fit: BoxFit.cover,
                    width: 250,
                    height: 150,
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  goToPage(context, '/hero-second');
                },
                child: Hero(
                  tag: 'fade',
                  transitionOnUserGestures: true,
                  flightShuttleBuilder: (flightContext,
                      animation,
                      flightDirection,
                      fromHeroContext,
                      BuildContext toHeroContext) {
                    final Widget toHero = toHeroContext.widget;
                    return FadeTransition(
                      opacity: animation.drive(
                        Tween(begin: 0.0, end: 1.0).chain(
                          CurveTween(
                            curve: Interval(
                              0.0,
                              1.0,
                              curve: ValleyQuadraticCurve(),
                            ),
                          ),
                        ),
                      ),
                      child: toHero,
                    );
                  },
                  child: Image.network(
                    "https://atlas-content-cdn.pixelsquid.com/theme%2F2278695321762534722%2F%24k2e5p4vdx3o-Homepage_IMG_sm.jpg",
                    fit: BoxFit.cover,
                    width: 250,
                    height: 150,
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  goToPage(context, '/hero-second');
                },
                child: Hero(
                  tag: 'scale',
                  transitionOnUserGestures: true,
                  flightShuttleBuilder: (flightContext,
                      animation,
                      flightDirection,
                      fromHeroContext,
                      BuildContext toHeroContext) {
                    final Widget toHero = toHeroContext.widget;
                    return ScaleTransition(
                      scale: animation.drive(
                        Tween(begin: 0.0, end: 1.0).chain(
                          CurveTween(
                            curve: Interval(
                              0.0,
                              1.0,
                              curve: PeakQuadraticCurve(),
                            ),
                          ),
                        ),
                      ),
                      child: toHero,
                    );
                  },
                  child: Image.network(
                    "https://atlas-content-cdn.pixelsquid.com/theme%2F2175771318505444703%2F%24d5nlbi3scy6-Homepage_IMG_sm.jpg",
                    fit: BoxFit.cover,
                    width: 250,
                    height: 150,
                  ),
                ),
              ),
            ],
          ),
        ),
        sourceFilePath: 'pages/catalog/animation_pages/hero_page.dart',
      ),
    );
  }
}

class ValleyQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    return 4 * pow(t - 0.5, 2).toDouble();
  }
}

class PeakQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    return -15 * pow(t, 2) + 15 * t + 1;
  }
}
