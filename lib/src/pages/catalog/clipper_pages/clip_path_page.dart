import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ClipPathPage extends StatelessWidget {
  const ClipPathPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipPath Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                clipBehavior: Clip.hardEdge,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset("assets/sad.png"),
                ),
              ),
              const SizedBox(height: 30.0),
              ClipOval(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset("assets/sad.png"),
                ),
              ),
              const SizedBox(height: 30.0),
              ClipPath(
                clipper: MyCustomClipper(),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset("assets/sad.png"),
                ),
              ),
              const SizedBox(height: 30.0),
              ClipPath(
                clipper: MyCustomClipper2(),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset("assets/sad.png"),
                ),
              ),
              const SizedBox(height: 30.0),
              ClipPath(
                clipper: MyCustomClipper3(),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset("assets/sad.png"),
                ),
              ),
              const SizedBox(height: 30.0),
              ClipPath(
                clipper: MyCustomClipper4(),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 50, top: 10),
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset("assets/sad.png"),
                ),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
        sourceFilePath: 'pages/catalog/clipper_pages/clip_path_page.dart',
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height * 0.5);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height - 80)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width, size.height - 80)
      ..lineTo(size.width, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, size.height * 0.20)
      ..lineTo(0, size.height * 0.60)
      ..quadraticBezierTo(0, size.height * 0.80, 15, size.height * 0.80)
      ..lineTo(size.width - 20, size.height * 0.80)
      ..quadraticBezierTo(
          size.width - 10, size.height - 10, size.width, size.height)
      ..quadraticBezierTo(
          size.width - 10, size.height * 0.90, size.width - 10, 15)
      ..quadraticBezierTo(size.width - 12, 0, size.width - 30, 0)
      ..lineTo(15, 0)
      ..quadraticBezierTo(0, 0, 0, size.height * 0.20);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(0, size.height * 0.20)
      ..lineTo(0, size.height * 0.60)
      ..quadraticBezierTo(0, size.height * 0.80, 45, size.height * 0.80)
      ..lineTo(size.width * 0.45, size.height * 0.80)
      ..quadraticBezierTo(size.width * 0.50 + 10, size.height - 10,
          size.width * 0.50 + 12, size.height)
      ..lineTo(size.width * 0.65, size.height * 0.80)
      ..lineTo(size.width - 25, size.height * 0.80)
      ..quadraticBezierTo(size.width + 15, size.height * 0.80, size.width, 15)
      ..quadraticBezierTo(size.width, 0, size.width - 30, 0)
      ..lineTo(20, 0)
      ..quadraticBezierTo(0, 0, 0, size.height * 0.20);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
