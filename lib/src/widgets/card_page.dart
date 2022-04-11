import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:widget_catalog/src/bloc/photos_bloc.dart';
import 'package:widget_catalog/src/models/photos_model.dart';
import 'package:widget_catalog/src/utils/size_config.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    photosBloc.fetchAllPhotos();
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body:
          /* Container(
        padding: EdgeInsets.all(40),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              color: Colors.amber,
              height: 150,
              width: 150,
            ),
            Positioned(
              child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    print('FAB tapped!');
                  },
                  backgroundColor: Colors.blue),
              right: 0,
              left: 0,
              bottom: 120,
            ),
          ],
        ),
      ), */
          StreamBuilder(
        stream: photosBloc.allPhotos,
        builder: (BuildContext context, AsyncSnapshot<PhotosModel> snapshot) {
          if (snapshot.hasData) {
            //return buildCards(snapshot, context);
            return buildCustomCards(snapshot, context);
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

buildCustomCards(AsyncSnapshot<PhotosModel> snapshot, BuildContext context) {
  //double defaultSize = SizeConfig().defaultSize;
  return ListView(
    padding: EdgeInsets.all(8.0),
    children: [
      Card(
        clipBehavior: Clip.antiAlias,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 180.0,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: FadeInImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1125056/pexels-photo-1125056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                      ),
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text('Hello'),
                    ),
                  )
                ],
              ),
            ),
            ButtonBar(
              buttonPadding: EdgeInsets.all(16),
              alignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vitae utricies",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Divider(),
                    //SizedBox(height: 12),
                    Text("Pellentesque id nibh tortor id aliquet",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: false,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 12),
      Card(
        clipBehavior: Clip.antiAlias,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 180.0,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: FadeInImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1125056/pexels-photo-1125056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                      ),
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text('Hello'),
                    ),
                  )
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Text('SHARE'),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('EXPLORE'),
                ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 12),
      Card(
        clipBehavior: Clip.antiAlias,
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 180.0,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: FadeInImage(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1125056/pexels-photo-1125056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                      ),
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text('Hello'),
                    ),
                  )
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.bookmark_outlined),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.call),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
      ),
      //SizedBox(height: SizeConfig().screenHeight * 0.06),
      SizedBox(height: 100 * 0.06),
      Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Card(
            color: Colors.blueGrey,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 35),
                      Text(
                        "Vitae utricies",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      SizedBox(height: 12),
                      Text(
                          "Pellentesque id nibh tortor id aliquet dsad  Pellentesque id nibh tortor id sd  asaliquet Pellentesque id nibh tortor id aliquet asd",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          softWrap: false,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                //SizedBox(height: 100.0, width: double.infinity),
                /* Align(
              alignment: Alignment(0, 11.0),
              heightFactor: 0.5,
              child: FloatingActionButton(
                onPressed: () {
                  print("que pex");
                },
                child: Icon(Icons.add),
              ),
            ) */
              ],
            ),
          ),
          Positioned(
            child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  print('FAB tapped!');
                },
                backgroundColor: Colors.blue),
            right: 0,
            left: 0,
            bottom: 115, //120
          ),
        ],
      ),
      SizedBox(height: 30),
    ],
  );
}

Widget buildCards(AsyncSnapshot<PhotosModel> snapshot, BuildContext context) {
  final screenSize = MediaQuery.of(context).size;
  return GridView.builder(
      // itemCount: snapshot.data.photosItem.length,
      itemCount: snapshot.data!.photosItem.length,
      //shrinkWrap: true,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: screenSize.width > 580 ? 3 : 2,
        //childAspectRatio: screenSize.width > 580 ? 0.85 : 0.70,),
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.only(left: 5.0, top: 10.0, right: 5.0),
          //height: screenSize.width > 580 ? 100 : 50,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 6,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        SizedBox(
                          child: AspectRatio(
                            aspectRatio: 0.88,
                            child: Container(
                              child: FadeInImage(
                                image: NetworkImage(
                                  /*  'https://photo-cdn2.icons8.com/d-MqtFLBNMx5Dc7oPtnd6Nd6jd3BKlkMMq_6HO6a4-M/rs:fit:576:864/Z3M6Ly9tb29zZTIv/YXNzZXRzL3NhdGEv/b3JpZ2luYWwvNzAy/LzQ0MTA4Njc2LTk5/OGEtNGQ3YS1iZmNm/LTZkNGRmYzgzNzE5/NC5qcGc.jpg' */
                                  snapshot.data!.photosItem[index].thumbnailUrl,
                                ),
                                placeholder:
                                    AssetImage('assets/jar-loading.gif'),
                                //width: 200,
                                //height: screenSize.width > 580 ? 150 : 100,
                                //fit: BoxFit.contain,
                                //fadeInDuration: Duration(milliseconds: 3000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          snapshot.data!.photosItem[index].title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          softWrap: false,
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ),
                    ],
                  )
                ]
                /* 
              //mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    child: FadeInImage(
                      image: NetworkImage(
                        snapshot.data.photosItem[index].thumbnailUrl,
                      ),
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      //width: 200,
                      //height: screenSize.width > 580 ? 150 : 100,
                      fit: BoxFit.fill,
                      //fadeInDuration: Duration(milliseconds: 3000),
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.all(8),
                  //width: 200,
                  child: Column(
                    children: [
                      Text(
                        snapshot.data.photosItem[index].url,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        snapshot.data.photosItem[index].title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: false,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ],
                  ),
                )
              ], */
                ),
          ),
        );
      });
}

/* GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          children: List.generate(6, (index) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: FadeInImage(
                        image: NetworkImage(
                          'https://images.pexels.com/photos/1125056/pexels-photo-1125056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                        ),
                        placeholder: AssetImage('assets/jar-loading.gif'),
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                        fadeInDuration: Duration(milliseconds: 3000),
                      ),
                      /* Image.network(
                        'https://images.pexels.com/photos/1125056/pexels-photo-1125056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ), */
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            'Nulliam eget.',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Sed eusimod nisi porta lorem molis aliquam ut pottitor leo a diam solicitudim tempor.',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        )); */

/* 
GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Image.network(
                      'https://images.pexels.com/photos/1125056/pexels-photo-1125056.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 200,
                    child: Column(
                      children: [
                        Text(
                          'Nulliam eget.',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Sed eusimod nisi porta lorem molis aliquam ut pottitor leo a diam solicitudim tempor.',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Image.network(
                      'https://icons8.com/preloaders/preloaders/1495/Spinner-3.gif',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 200,
                    child: Column(
                      children: [
                        Text(
                          'Nulliam eget.',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Sed eusimod nisi porta lorem molis aliquam ut pottitor leo a diam solicitudim tempor.',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2015/03/05/19/18/studio-660806_1280.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    width: 200,
                    child: Column(
                      children: [
                        Text(
                          'Nulliam eget.',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Sed eusimod nisi porta lorem molis aliquam ut pottitor leo a diam solicitudim tempor.',
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ), */
