import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ImageFilteredPage extends StatefulWidget {
  const ImageFilteredPage({Key? key}) : super(key: key);

  @override
  State<ImageFilteredPage> createState() => _ImageFilteredPageState();
}

class _ImageFilteredPageState extends State<ImageFilteredPage> {
  double sigmaX = 0;
  double sigmaY = 0;
  double rotateZ = 0;
  BlendMode blendMode = BlendMode.srcOver;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Filtered Widgets"),
      ),
      body: CodeViewerWidget(
        child: ListView(
          controller: ScrollController(),
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          children: [
            Stack(
              children: [
                Image.asset("assets/images/invictos.jpg"),
                Positioned(
                  top: 60,
                  bottom: 50,
                  left: 10,
                  right: 20,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 5, sigmaY: 5, tileMode: TileMode.clamp),
                      blendMode: blendMode,
                      child: Container(
                        //color: Colors.red.withOpacity(0.4),
                        alignment: Alignment.center,
                        child: const Text(
                            "Blur con BackdropFilter Positioned y ClipRect"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("BlendMode: "),
                DropdownButton<BlendMode>(
                    dropdownColor: Colors.black,
                    value: blendMode,
                    items: [
                      for (final val in BlendMode.values)
                        DropdownMenuItem(
                          value: val,
                          child: Text(
                            val.toString().substring("BlendMode.".length),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        )
                    ],
                    onChanged: (BlendMode? val) {
                      setState(() {
                        if (val != null) {
                          blendMode = val;
                        }
                      });
                    })
              ],
            ),
            const SizedBox(height: 30),
            ImageFiltered(
              imageFilter: ImageFilter.compose(
                outer: ImageFilter.matrix(Matrix4.rotationZ(rotateZ).storage),
                inner: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
              ),
              child: Image.asset("assets/images/invictos.jpg"),
            ),
            Row(
              children: [
                const Text("SigmaX: "),
                Expanded(
                  child: Slider(
                    max: 20,
                    value: sigmaX,
                    onChanged: (val) {
                      setState(() {
                        sigmaX = val;
                      });
                    },
                  ),
                ),
                Text(sigmaX.toStringAsFixed(1)),
              ],
            ),
            Row(
              children: [
                const Text("SigmaY: "),
                Expanded(
                  child: Slider(
                    max: 20,
                    value: sigmaY,
                    onChanged: (val) {
                      setState(() {
                        sigmaY = val;
                      });
                    },
                  ),
                ),
                Text(sigmaY.toStringAsFixed(1)),
              ],
            ),
            Row(
              children: [
                const Text("RotationZ: "),
                Expanded(
                  child: Slider(
                    min: -1.6,
                    max: 1.6,
                    value: rotateZ,
                    onChanged: (val) {
                      setState(() {
                        rotateZ = val;
                      });
                    },
                  ),
                ),
                Text(rotateZ.toStringAsFixed(1)),
              ],
            )
          ],
        ),
        sourceFilePath: 'pages/catalog/image_pages/image_filtered_page.dart',
      ),
    );
  }
}
