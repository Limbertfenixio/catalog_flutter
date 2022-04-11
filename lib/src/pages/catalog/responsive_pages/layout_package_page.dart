import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class LayoutPackagePage extends StatelessWidget {
  const LayoutPackagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Package"),
      ),
      body: const Layout(
        child: LayoutPackageScaffold(),
      ),
    );
  }
}

class LayoutPackageScaffold extends StatelessWidget {
  const LayoutPackageScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.breakpoint > LayoutBreakpoint.xs) {
      print("Layout is sm");
      return const TabletScreenView();
    } else {
      return const MobileScreenView();
    }
  }
}

class MobileScreenView extends StatelessWidget {
  const MobileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("me recontrstruyo");

    return const Center(
      child: Text(
        "Layout for Mobile Screen",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class TabletScreenView extends StatelessWidget {
  const TabletScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Layout for Tablet Screen",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
