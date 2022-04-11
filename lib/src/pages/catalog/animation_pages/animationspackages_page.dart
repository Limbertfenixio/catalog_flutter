import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';
import 'package:widget_catalog/src/theme/colors.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

// Define animated properties of simple animations
enum AniProps { width, height, color }

class AnimationsPackagesPage extends StatefulWidget {
  const AnimationsPackagesPage({Key? key}) : super(key: key);

  @override
  State<AnimationsPackagesPage> createState() => _AnimationsPackagesPageState();
}

class _AnimationsPackagesPageState extends State<AnimationsPackagesPage> {
  final pages = [
    const Icon(Icons.looks_one, size: 60, key: ValueKey(1)),
    const Icon(Icons.looks_two, size: 60, key: ValueKey(2)),
    const Icon(Icons.looks_3, size: 60, key: ValueKey(3)),
  ];
  int currentPage = 0;
  SharedAxisTransitionType transitionType = SharedAxisTransitionType.horizontal;
  var control = CustomAnimationControl.play;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations Packages Widgets"),
      ),
      body: CodeViewerWidget(
        child: ListView(
          controller: ScrollController(),
          padding: const EdgeInsets.all(12.0),
          children: [
            /* Package animations example */
            const Text(
              "Package: animations",
              style: TextStyle(fontSize: 22),
            ),
            const Divider(thickness: 2.0, color: Colors.indigo),
            Container(
              height: 50.0,
              alignment: Alignment.center,
              color: Colors.red,
              //child: widget(child: Text("Open Container")),
              child: OpenContainer(
                transitionDuration: const Duration(milliseconds: 700),
                transitionType: ContainerTransitionType.fade,
                closedColor: ColorsThemeDark.primary,
                closedBuilder: (ctx, action) => const Text("Open Container"),
                openBuilder: (ctx, action) => Scaffold(
                  body: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Page detail"),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text("ShareAxisTransition"),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
              child: PageTransitionSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) {
                  return SharedAxisTransition(
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: transitionType,
                    child: child,
                  );
                },
                child: pages[currentPage],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentPage = currentPage == 0 ? 0 : currentPage - 1;
                    });
                  },
                  child: const Text("BACK"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentPage = currentPage == 2 ? 2 : currentPage + 1;
                    });
                  },
                  child: const Text("NEXT"),
                ),
                DropdownButton<SharedAxisTransitionType>(
                  value: transitionType,
                  items: [
                    for (final val in SharedAxisTransitionType.values)
                      DropdownMenuItem(
                        value: val,
                        child: Text(val
                            .toString()
                            .substring('SharedAxisTransitionType.'.length)),
                      )
                  ],
                  onChanged: (SharedAxisTransitionType? value) {
                    setState(() {
                      if (value != null) {
                        transitionType = value;
                      }
                    });
                  },
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                showModal(
                  configuration: const FadeScaleTransitionConfiguration(
                    transitionDuration: Duration(seconds: 1),
                    reverseTransitionDuration: Duration(milliseconds: 700),
                  ),
                  context: context,
                  builder: (ctx) => const AlertDialog(
                    title: Text("Dialog Animation"),
                    content: Text("Dialog Animation"),
                  ),
                );
              },
              child: const Text("FadeScaleTransitionConfiguration"),
            ),
            /* Package staggered animations examples */
            const Text(
              "Package: staggered animations",
              style: TextStyle(fontSize: 22),
            ),
            const Divider(thickness: 2.0, color: Colors.indigo),
            Container(
              margin: const EdgeInsets.only(top: 0.0),
              width: double.infinity,
              height: 120,
              child: AnimationLimiter(
                child: ListView.builder(
                  controller: ScrollController(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(seconds: 2),
                      child: SlideAnimation(
                        child: FadeInAnimation(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10.0),
                            width: 30,
                            height: 30,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            /* Simple Animation Examples */
            const Text(
              "Package: simple animations",
              style: TextStyle(fontSize: 22),
            ),
            const Divider(thickness: 2.0, color: Colors.indigo),
            PlayAnimation<Color?>(
              tween: ColorTween(begin: Colors.red, end: Colors.blue),
              duration: const Duration(seconds: 2),
              delay: const Duration(milliseconds: 500),
              builder: (context, Widget? child, value) {
                return Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  color: value,
                  child: child,
                );
              },
              child: const Text("Play Animation"),
            ),
            LoopAnimation<Color?>(
              tween: ColorTween(begin: Colors.red, end: Colors.blue),
              duration: const Duration(seconds: 2),
              builder: (context, Widget? child, value) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5.0),
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  color: value,
                  child: child,
                );
              },
              child: const Text("Loop Animation"),
            ),
            MirrorAnimation<Color?>(
              tween: ColorTween(begin: Colors.red, end: Colors.blue),
              duration: const Duration(seconds: 2),
              builder: (context, Widget? child, value) {
                return Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  color: value,
                  child: child,
                );
              },
              child: const Text("Mirror Animation"),
            ),
            CustomAnimation<double>(
              builder: (context, child, value) {
                return Transform.translate(
                  offset: Offset(value, 0),
                  child: child,
                );
              },
              startPosition: 0.0,
              tween: Tween(begin: -100.0, end: 100.0),
              control: control,
              child: MaterialButton(
                color: Colors.amber,
                onPressed: () {
                  setState(() {
                    control = control == CustomAnimationControl.play
                        ? CustomAnimationControl.playReverse
                        : CustomAnimationControl.play;
                  });
                },
                child: const Text("Custom Animation"),
              ),
            ),
            PlayAnimation<TimelineValue<AniProps>>(
              builder: (context, child, value) {
                return Container(
                  alignment: Alignment.center,
                  width: value.get(AniProps.width),
                  height: value.get(AniProps.height),
                  color: Colors.orange,
                  // child: child,
                );
              },
              tween: createTween(),
              duration: createTween().duration,
            ),
            /* Loading animations Examples */
            const Text(
              "Package: loading animations",
              style: TextStyle(fontSize: 22),
            ),
            const Divider(thickness: 2.0, color: Colors.indigo),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LoadingFlipping.circle(borderColor: Colors.blue, size: 30.0),
                LoadingFlipping.square(borderColor: Colors.blue, size: 30.0),
                LoadingRotating.square(borderColor: Colors.blue, size: 30.0),
                LoadingDoubleFlipping.circle(
                    borderColor: Colors.blue, size: 30.0),
                LoadingDoubleFlipping.square(
                    borderColor: Colors.blue, size: 30.0),
                LoadingBouncingGrid.circle(borderColor: Colors.blue, size: 30.0)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LoadingBouncingGrid.square(
                    borderColor: Colors.blue, size: 30.0),
                LoadingFilling.square(borderColor: Colors.blue, size: 30.0),
                LoadingFadingLine.circle(borderColor: Colors.blue, size: 30.0),
                LoadingFadingLine.square(borderColor: Colors.blue, size: 30.0),
                LoadingBouncingLine.circle(
                    borderColor: Colors.blue, size: 30.0),
                LoadingBouncingLine.square(
                    borderColor: Colors.blue, size: 30.0),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LoadingJumpingLine.circle(borderColor: Colors.blue, size: 30.0),
                LoadingJumpingLine.square(borderColor: Colors.blue, size: 30.0),
                LoadingBumpingLine.circle(borderColor: Colors.blue, size: 30.0),
                LoadingBumpingLine.square(borderColor: Colors.blue, size: 30.0),
              ],
            ),
            /* Loading animations Examples */
            const Text(
              "Package: loading animations",
              style: TextStyle(fontSize: 22),
            ),
            const Divider(thickness: 2.0, color: Colors.indigo),
          ],
        ),
        sourceFilePath:
            'pages/catalog/animation_pages/animationspackages_page.dart',
      ),
    );
  }

  TimelineTween<AniProps> createTween() {
    var tween = TimelineTween<AniProps>();

    var scene = tween.addScene(
      begin: Duration.zero,
      end: const Duration(seconds: 2),
    );

    scene.animate(
      AniProps.width,
      tween: Tween<double>(begin: 10.0, end: 5.0),
    );

    scene.animate(
      AniProps.height,
      tween: Tween<double>(begin: 500.0, end: 50.0),
    );

    return tween;
  }
}
