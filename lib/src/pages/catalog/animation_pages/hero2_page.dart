import 'package:flutter/material.dart';

class HeroSecondPage extends StatelessWidget {
  const HeroSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  body: Hero(
        tag: 'logo',
        child: FlutterLogo(
          size: 350,
        ),
      ), */
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'logo',
                transitionOnUserGestures: true,
                child: Image.network(
                  "https://atlas-content-cdn.pixelsquid.com/theme%2F2303321687694775347%2F%24c8cmlzqaekl-Homepage_IMG_sm.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 30),
                Hero(
                  tag: "rotation",
                  child: Image.network(
                    "https://atlas-content-cdn.pixelsquid.com/theme%2F2318497111219377313%2F%24w2qzcl0ajfl-Homepage_IMG_sm.jpg",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
                SizedBox(height: 30),
                Hero(
                  tag: "fade",
                  child: Image.network(
                    "https://atlas-content-cdn.pixelsquid.com/theme%2F2278695321762534722%2F%24k2e5p4vdx3o-Homepage_IMG_sm.jpg",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
                SizedBox(height: 30),
                Hero(
                  tag: "scale",
                  child: Image.network(
                    "https://atlas-content-cdn.pixelsquid.com/theme%2F2175771318505444703%2F%24d5nlbi3scy6-Homepage_IMG_sm.jpg",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
