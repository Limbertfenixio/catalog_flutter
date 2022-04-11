import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_catalog/src/app.dart';

void main() => runApp(
      /* DevicePreview(
        enabled: true,
        builder: (context) => App(),
      ), */
      ProviderScope(
        child: App(),
      ),
    );
