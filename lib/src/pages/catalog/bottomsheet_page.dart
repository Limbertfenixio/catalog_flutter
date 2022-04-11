import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:widget_catalog/src/pages/catalog/Bottom_sheet_pages/home_bottom_sheet_page.dart';
import 'package:widget_catalog/src/pages/catalog/Bottom_sheet_pages/music_bottom_sheet_page.dart';

class BottomSheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListOptions(
              title: "Simple Bottom Sheet",
              action: simpleBottomSheet,
              params: '',
            ),
            ListOptions(
              title: "Food Order Bottom Sheet",
              action: foodOrderBottomSheet,
              params: '',
            ),
            ListOptions(
              title: "Snapping Modal Bottom Sheet",
              action: snappingBottomSheet,
              params: '',
            ),
            ListOptions(
              title: "Stacked Bottom Sheet",
              action: pageBottomSheet,
              params: HomeBottomSheetPage(),
            ),
            ListOptions(
              title: "Music Player Bottom Sheet",
              action: pageBottomSheet,
              params: MusicBottomSheetPage(),
            ),
          ],
        ).toList(),
      ),

      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      /* bottomSheet: Container(
        decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        child: DraggableScrollableSheet(
          initialChildSize: 0.1,
          maxChildSize: 0.5,
          minChildSize: 0.1,
          expand: false,
          builder: (context, scrollCtrl) => ListView(
            controller: scrollCtrl,
            children: [
              Text("Unstoppa"),
            ],
          ),
        ),
      ), */
    );
  }
}

class ListOptions extends StatelessWidget {
  final String title;
  final action;
  final params;

  const ListOptions({Key? key, required this.title, this.action, this.params})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.indigo[50]),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo[50]),
      onTap: () {
        params != '' ? action(context, params) : action(context);
      },
    );
  }
}

void simpleBottomSheet(BuildContext context) {
  List<Widget> items = [];
  List.generate(4, (index) {
    var item = Container(
      child: ListTile(
        dense: true,
        leading: Icon(
          Icons.add_a_photo,
          color: Colors.indigo,
        ),
        title: Text("Open from Galery"),
        onTap: () {},
      ),
    );

    if (index < 7) {
      items..add(item);
    }
  });
  //print(items);
  showModalBottomSheet(
    context: context,
    enableDrag: false,
    builder: (BuildContext context) => Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(
                Icons.add_box,
                color: Colors.indigo,
              ),
              title: Text("Go To Preview"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add_business,
                color: Colors.indigo,
              ),
              title: Text("Save To Collections"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.add_a_photo,
                color: Colors.indigo,
              ),
              title: Text("Go To Camera"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.indigo,
              ),
              title: Text("Share"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    ),
  );
}

class makeDisssmisable extends StatelessWidget {
  final Widget child;

  makeDisssmisable({required Widget this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: child,
    );
  }
}

void foodOrderBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) => makeDisssmisable(
      child: DraggableScrollableSheet(
        initialChildSize: 0.5,
        maxChildSize: 0.5,
        minChildSize: 0.1,
        builder: (context, controller) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      color: Colors.grey,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    controller: controller,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Expanded(
                              child: Row(
                                children: [
                                  Icon(Icons.view_list),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Order Details",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "\$67.0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "+\$12.1",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Skyline Pizzeria",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "JP. Nagar 7th Phase, Bengaluru - 560 070",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Colors.grey[300],
                      ),
                      OrderDetail(
                        description: "Subtotal",
                        price: "\$ 67.0",
                      ),
                      OrderDetail(
                        description: "Tax",
                        price: "\$ 7.0",
                      ),
                      OrderDetail(
                        description: "Delivery Charges",
                        price: "\$ 5.1",
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.grey[300],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "\$ 79.1",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 1.5,
                          color: Colors.grey[300],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 12.0, right: 12.0, top: 0.0),
                        child: ListTile(
                          dense: true,
                          leading: Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFE0E0E0),
                              ),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.transparent,
                            ),
                            child: Icon(
                              Icons.house_siding,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          title: Text("Canara Bank"),
                          subtitle: Text("1234 5678 9101 XXXX"),
                          trailing: Text("Change"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.0,
                          right: 12.0,
                          top: 0.0,
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black),
                          child: Text("PROCCED TO PAY"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class OrderDetail extends StatelessWidget {
  final String description;
  final String price;

  const OrderDetail({Key? key, required this.description, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            description,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}

void pageBottomSheet(BuildContext context, Widget page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

Future snappingBottomSheet(BuildContext context) {
  return showSlidingBottomSheet(
    context,
    builder: (context) => SlidingSheetDialog(
      color: Colors.white,
      duration: Duration(milliseconds: 1000),
      cornerRadius: 16,
      snapSpec: SnapSpec(
        snap: true,
        initialSnap: 0.5,
        snappings: [0.4, 1],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      padding: EdgeInsets.zero,
      builder: (context, state) => Material(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 4.0,
            right: 4.0,
            bottom: 25.0,
            top: 10.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
                height: 5,
                width: 85,
              ),
              SizedBox(height: 15),
              Text(
                "BUILD YOUR ALBUM",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.image,
                        size: 30.0,
                      ),
                      Text("Image")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.text_fields,
                        size: 30.0,
                      ),
                      Text("Text")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.video_call,
                        size: 30.0,
                      ),
                      Text("Video")
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.format_quote,
                        size: 30.0,
                      ),
                      Text("Quote")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
