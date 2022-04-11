import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class CustomPainterPage extends StatelessWidget {
  const CustomPainterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomPainter Widgets"),
      ),
      body: CodeViewerWidget(
        child: Center(
          child: Container(
            width: 300,
            height: 300,
            child: CustomPaint(
              size: const Size(150, 150),
              painter: TresEnRayaPainter(),
              isComplex: false,
              willChange: false,
              child: const Text("Custom Painter Example 3 en raya"),
            ),
          ),
        ),
        sourceFilePath: 'pages/catalog/clipper_pages/custom_painter_page.dart',
      ),
    );
  }
}

class TresEnRayaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Definimos el marcador para dibujar
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.blueAccent
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    // Definimos el diseño a pintar en el canvas
    final Path path = Path()
      ..moveTo(size.width * 0.333, 0)
      ..lineTo(size.width * 0.333, size.height)
      ..moveTo(size.width * 0.677, 0)
      ..lineTo(size.width * 0.677, size.height)
      ..moveTo(0, size.height * 0.333)
      ..lineTo(size.width, size.height * 0.333)
      ..moveTo(0, size.height * 0.67)
      ..lineTo(size.width, size.height * 0.67);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TresEnRayaPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(TresEnRayaPainter oldDelegate) => false;
}
