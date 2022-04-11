import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class PageViewSimplePage extends StatefulWidget {
  const PageViewSimplePage({Key? key}) : super(key: key);

  @override
  State<PageViewSimplePage> createState() => _PageViewSimplePageState();
}

class _PageViewSimplePageState extends State<PageViewSimplePage> {
  int currentPosition = 2;
  PageController pageController = PageController(
    initialPage: 2,
    viewportFraction: 1.0,
  );

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widgets"),
      ),
      body: CodeViewerWidget(
        child: Stack(
          children: [
            SizedBox(
              height: 500,
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                reverse: false,
                physics: const ClampingScrollPhysics(),
                pageSnapping: true,
                scrollBehavior: ClampingScrollBehavior(),
                children: const [
                  BodyPageView(
                    title: "Tutorial 1",
                    desc:
                        "Enim enim proident laborum ad sunt et tempor voluptate reprehenderit cillum est et.",
                    urlImage:
                        "https://api.lorem.space/image/movie?w=200&h=200&hash=wqo34q57",
                  ),
                  BodyPageView(
                    title: "Tutorial 2",
                    desc:
                        "Ea esse id nisi nostrud non quis fugiat tempor Lorem nisi id velit irure sint.",
                    urlImage:
                        "https://api.lorem.space/image/game?w=200&h=200&hash=dbvgy7tm",
                  ),
                  BodyPageView(
                    title: "Tutorial 3",
                    desc:
                        "Aliqua exercitation magna dolor eiusmod ut deserunt laboris anim amet in qui.",
                    urlImage:
                        "https://api.lorem.space/image/movie?w=200&h=200&hash=wqo34q57",
                  ),
                  BodyPageView(
                    title: "Tutorial 4",
                    desc: "Nisi ea id Lorem nostrud laboris fugiat magna.",
                    urlImage:
                        "https://api.lorem.space/image/game?w=200&h=200&hash=dbvgy7tm",
                  ),
                ],
                onPageChanged: (index) {
                  setState(() {
                    currentPosition = index;
                  });
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          onSurface: Colors.blue[200],
                        ),
                        onPressed: currentPosition == 0
                            ? null
                            : () {
                                pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                              },
                        child: const Text("BACK")),
                    DotsIndicator(
                      dotsCount: 4,
                      position: currentPosition.toDouble(),
                      decorator: DotsDecorator(
                        color: Colors.indigo.shade400,
                        activeColor: Colors.amber,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        activeShape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15.0),
                          ),
                        ),
                        size: const Size(30.0, 13.0),
                        activeSize: const Size(30.0, 13.0),
                      ),
                      onTap: (position) {
                        pageController.jumpToPage(position.toInt());
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        onSurface: Colors.blue[200],
                      ),
                      onPressed: currentPosition == 3
                          ? null
                          : () {
                              pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear,
                              );
                            },
                      child: const Text("NEXT"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        sourceFilePath: 'pages/catalog/pageview_pages/pv_simple_page.dart',
      ),
    );
  }
}

class BodyPageView extends StatelessWidget {
  final String urlImage;
  final String title;
  final String desc;

  const BodyPageView(
      {Key? key,
      required this.title,
      required this.desc,
      required this.urlImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(urlImage),
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            desc,
            textAlign: TextAlign.center,
          ),
          //DotsIndicator(dotsCount: 5)
        ],
      ),
    );
  }
}
