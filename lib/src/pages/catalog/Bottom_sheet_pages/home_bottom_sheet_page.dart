import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

SolidController _solidController = SolidController();
bool isShowSheet = false;

class HomeBottomSheetPage extends StatefulWidget {
  const HomeBottomSheetPage({Key? key}) : super(key: key);

  @override
  _HomeBottomSheetPageState createState() => _HomeBottomSheetPageState();
}

class _HomeBottomSheetPageState extends State<HomeBottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Book My Event"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 45.0),
          child: Container(
            color: Colors.grey[850],
            child: ListView(
              children: [
                FadeInImage(
                  placeholder: AssetImage("assets/jar-loading.gif"),
                  image: NetworkImage(
                      "https://photo-cdn2.icons8.com/UJ4fKqqRkLKvQPtnUBTq_66F_cR9PqQtHWfRQOQFuOw/rs:fit:576:864/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvNzA3LzM2NTBj/YWMwLTY2OGItNDEw/My04ZmNmLWI0NDcy/OWU5MDBiOC5qcGc.jpg"),
                  height: 300,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Heritage Fest 2021",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bengaluru Kamataka",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          )
                        ],
                      ),
                      TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.indigo,
                          ),
                        ),
                        icon: Icon(Icons.voice_over_off_outlined),
                        onPressed: () {},
                        label: Text(
                          " Culture",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey[700],
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      RichTextContent(title: "About"),
                      SizedBox(height: 20),
                      RichTextContent(title: "Casts"),
                      SizedBox(height: 20),
                      RichTextContent(title: "Book Tickets"),
                      SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //_solidController.show();
            //isShowSheet ? _solidController.hide() : _solidController.show();
            setState(() {
              print(isShowSheet);

              isShowSheet ? isShowSheet = false : isShowSheet = true;
            });
          },
          child: Icon(
            Icons.print,
            color: Colors.white,
          ),
        ),
        bottomSheet: StackedBottomBarSheet());
  }
}

class RichTextContent extends StatelessWidget {
  final String title;

  const RichTextContent({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        RichText(
          text: TextSpan(
              text:
                  """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus pellentesque massa, eget blandit mi lacinia tristique. Integer finibus ut nisi posuere ullamcorper. Cras ullamcorper urna eget ultrices scelerisque. Praesent ante lectus, convallis ac tortor eget, tempus euismod odio. Nulla facilisi. Morbi laoreet, tellus maximus pharetra tincidunt"""),
        ),
      ],
    );
  }
}

class StackedBottomBarSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final starsRate = List.generate(5, (index) => null);
    return Container(
      color: Colors.white,
      child: SolidBottomSheet(
        controller: _solidController,
        toggleVisibilityOnTap: false,
        onHide: () {
          isShowSheet = false;
        },
        onShow: () {
          isShowSheet = true;
        },
        draggableBody: true,
        showOnAppear: isShowSheet,
        maxHeight: 420,
        headerBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: Container(
            height: 50,
            child: Wrap(
              children: [
                Text(
                  "K S Auditorium",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kanakpura Road, Bengaluru"),
                    Text("\$ 250"),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 25.0),
            child: ListView(
              children: [
                Row(
                  children: [
                    Text("4.5, "),
                    Row(
                      children: starsRate
                          .map((e) => Icon(
                                Icons.star,
                                color: Colors.lime,
                              ))
                          .toList(),
                    ),
                    Text("  (231)"),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 10),
                AspectRatio(
                  aspectRatio: 2.1,
                  child: Container(
                    height: 200,
                    child: FadeInImage(
                      image: NetworkImage(
                          "https://photo-cdn2.icons8.com/hEo96YVAugOVfbHLsExuKCz5TLHFft8nAWPVD85sp38/rs:fit:576:865/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5h/c3NldHMvYXNzZXRz/L3NhdGEvb3JpZ2lu/YWwvODAzLzBlMDQ5/ODg4LWI0MTItNDEz/ZC1iNmIyLWQ4YTlm/ZTE0NzdlZS5qcGc.jpg"),
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.indigo,
                        ),
                        Text("Call"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.web,
                          color: Colors.indigo,
                        ),
                        Text("Website"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.photo,
                          color: Colors.indigo,
                        ),
                        Text("Photos"),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.directions,
                          color: Colors.indigo,
                        ),
                        Text("Directions")
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 1.5,
                  color: Colors.grey[300],
                ),
                ListTile(
                  leading: Icon(
                    Icons.pin_drop,
                    color: Colors.indigo,
                  ),
                  title: Text(
                      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi luctus pellentesque massa, eget blandit mi lacinia"""),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
