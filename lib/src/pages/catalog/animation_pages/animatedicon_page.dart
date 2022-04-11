import 'package:flutter/material.dart';
import 'package:widget_catalog/src/widgets/codeviewer_widget.dart';

const animationIcons = <String, AnimatedIconData>{
  'add_event': AnimatedIcons.add_event,
  'arrow_menu': AnimatedIcons.arrow_menu,
  'close_menu': AnimatedIcons.close_menu,
  'ellipsis_search': AnimatedIcons.ellipsis_search,
  'event_add': AnimatedIcons.event_add,
  'home_menu': AnimatedIcons.home_menu,
  'list_view': AnimatedIcons.list_view,
  'menu_arrow': AnimatedIcons.menu_arrow,
  'menu_close': AnimatedIcons.menu_close,
  'menu_home': AnimatedIcons.menu_home,
  'pause_play': AnimatedIcons.pause_play,
  'play_pause': AnimatedIcons.play_pause,
  'search_ellipsis': AnimatedIcons.search_ellipsis,
  'view_list': AnimatedIcons.view_list,
};

class AnimatedIconPage extends StatelessWidget {
  const AnimatedIconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Icon Widgets"),
      ),
      body: CodeViewerWidget(
        child: ListView(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                for (var item in animationIcons.entries)
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: AnimIconDemo(
                      name: item.key,
                      iconData: item.value,
                    ),
                  )
              ],
            )
          ],
        ),
        sourceFilePath: 'pages/catalog/animation_pages/animatedicon_page.dart',
      ),
    );
  }
}

class AnimIconDemo extends StatefulWidget {
  final AnimatedIconData iconData;
  final String name;

  const AnimIconDemo({Key? key, required this.iconData, required this.name})
      : super(key: key);

  @override
  State<AnimIconDemo> createState() => _AnimIconDemoState();
}

class _AnimIconDemoState extends State<AnimIconDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (controller.isCompleted) {
              controller.reverse();
            } else {
              controller.forward();
            }
          },
          child: AnimatedIcon(
            icon: widget.iconData,
            progress: controller,
            color: Colors.white,
            size: 120,
          ),
        )
      ],
    );
  }
}
