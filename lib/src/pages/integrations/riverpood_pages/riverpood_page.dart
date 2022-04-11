import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_catalog/src/state/hello_state.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

class RiverPoodPage extends ConsumerWidget {
  const RiverPoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod"),
      ),
      body: CodeViewerWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            RiverpodForma1(),
            RiverpodForma2(),
          ],
        ),
        sourceFilePath: '',
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.refresh(counterProvider);
            },
            child: const Icon(
              Icons.refresh,
            ),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              ref.watch(counterProvider).incrementValue();
            },
            child: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
    );
  }
}

class RiverpodForma1 extends ConsumerWidget {
  const RiverpodForma1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcomeString = ref.watch(welcomeProvider);
    return Center(
      child: Text(welcomeString),
    );
  }
}

class RiverpodForma2 extends StatelessWidget {
  const RiverpodForma2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer(
        builder: ((context, ref, child) {
          final welcomeString = ref.watch(counterProvider);
          return Text("${welcomeString.value}");
        }),
      ),
    );
  }
}
