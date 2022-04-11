import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SliversLayoutPage extends StatelessWidget {
  const SliversLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            stretch: true,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.red,
            ),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.menu),
            ),
            actions: [Icon(Icons.favorite), SizedBox(width: 10)],
            //title: Text("Slivers Widgets"),
            expandedHeight: 300.0,
            //toolbarHeight: 200.0,
            //collapsedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                " SliverAppBar",
              ),
              background: Image.network(
                "https://atlas-content-cdn.pixelsquid.com/theme%2F1556694116845229380%2F%24bjbh3h8kyom-Homepage_IMG_sm.jpg",
                fit: BoxFit.cover,
              ),
              collapseMode: CollapseMode.parallax,
              stretchModes: [StretchMode.zoomBackground],
            ),
          ),
          SliverGrid(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text("SliverGrid"),
                ),
                Container(color: Colors.yellow),
                Container(color: Colors.green),
                Container(color: Colors.blue),
              ],
            ),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: HederDelegate("SliverPersistentHeader"),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                (index) => ListTile(
                  textColor: Colors.white,
                  title: Text("SliverList  $index"),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 200),
                Text(
                  'SliverFillRemaining This is some longest text that should be centered'
                  'together with the logo',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: HederDelegate("SliverPersistentHeader"),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text("SliverFixedExtentList"),
                  ),
                  Container(color: Colors.yellow),
                  Container(color: Colors.green),
                  Container(color: Colors.blue),
                  Container(color: Colors.yellow),
                  Container(color: Colors.green),
                  Container(color: Colors.blue),
                  Container(color: Colors.yellow),
                  Container(color: Colors.green),
                ],
              ),
              itemExtent: 70)
        ],
      ),
    );
  }
}

class HederDelegate extends SliverPersistentHeaderDelegate {
  final String title;

  HederDelegate(this.title);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
