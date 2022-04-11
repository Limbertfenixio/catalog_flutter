import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images Widgets"),
      ),
      body: CodeViewerWidget(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Image from asset"),
              const SizedBox(height: 10.0),
              Image.asset(
                "assets/images/invictos.jpg",
                errorBuilder: (context, error, stackTrace) {
                  return Text(
                      "Error Image load Asset: ${stackTrace.toString()} . ${error.toString()}");
                },
                frameBuilder: (context, child, frame, syncLoaded) {
                  return Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: child,
                  );
                },
                semanticLabel: "Semantic label image",
                excludeFromSemantics: false,
                width: 200,
                height: 200,
                colorBlendMode: BlendMode.color,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(height: 10.0),
              const Text("Image from network"),
              const SizedBox(height: 10.0),
              Image.network(
                "https://api.lorem.space/image/fashion?w=100&h=100&hash=341t3sn2",
                loadingBuilder: (context, child, loadingProgress) {
                  return child;
                },
                frameBuilder: (context, child, frame, syncLoaded) {
                  return Center(
                    child: child,
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Text(
                    "Error Image load Network: ${stackTrace.toString()} . ${error.toString()}",
                  );
                },
                scale: 0.8,
                repeat: ImageRepeat.repeatX,
                headers: const {},
              ),
              const SizedBox(height: 10.0),
              const Text("Image Gif from assets"),
              const SizedBox(height: 10.0),
              const Image(
                image: AssetImage("assets/jar-loading.gif"),
                isAntiAlias: true,
                gaplessPlayback: true,
                width: double.infinity,
                height: 200,
              ),
              const Text("Cached Network Image"),
              const SizedBox(height: 10.0),
              CachedNetworkImage(
                imageUrl:
                    'https://photo-cdn2.icons8.com/18wht9ZiGFdhraTiOOLe9W09wmPh4AxTEUWk0W4FGgU/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvMjk3L2Q2YTE4/YTkwLWY3YjQtNDU5/NS1hNzUxLWVmOWI0/ZjQwNzIyZC5qcGc.jpg',
                placeholder: (_, url) {
                  return const Center(child: CircularProgressIndicator());
                },
                errorWidget: (_, message, extras) {
                  return Text("Error en widget $message");
                },
                width: 400,
                height: 200,
                httpHeaders: const {},
                fadeOutDuration: const Duration(seconds: 2),
                fadeInDuration: const Duration(seconds: 2),
                fadeOutCurve: Curves.bounceOut,
                fadeInCurve: Curves.fastOutSlowIn,
                fit: BoxFit.cover,
                alignment: Alignment.center,
                repeat: ImageRepeat.repeatY,
                useOldImageOnUrlChange: true,
              ),
              const SizedBox(height: 10.0),
              CachedNetworkImage(
                imageUrl: "https://picsum.photos/200/300",
                imageBuilder: (context, imageProvider) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        colorFilter: const ColorFilter.mode(
                          Colors.red,
                          BlendMode.color,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: double.infinity,
                    height: 200,
                    alignment: Alignment.center,
                    child: const Text("Image with decoration filter"),
                  );
                },
                alignment: Alignment.center,
                progressIndicatorBuilder: (_, message, downloadProgress) {
                  return CircularProgressIndicator(
                    value: downloadProgress.progress,
                  );
                },
              )
            ],
          ),
        ),
        sourceFilePath: 'pages/catalog/image_pages/image_page.dart',
      ),
    );
  }
}
