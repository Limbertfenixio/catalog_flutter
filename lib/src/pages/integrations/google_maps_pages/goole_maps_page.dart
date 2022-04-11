import 'dart:async';
import 'dart:ui' as ui;

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsPage extends StatefulWidget {
  const GoogleMapsPage({Key? key}) : super(key: key);

  @override
  State<GoogleMapsPage> createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  Completer<GoogleMapController> _gMapController = Completer();
  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  final CameraPosition _camPosition = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4,
  );

  final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(40.4165, -3.70325),
    zoom: 14.4,
    tilt: 59.440717697143555,
  );

  final Set<Marker> markers = new Set();

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    loadMarkers().then((value) {});
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps"),
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _camPosition,
            onMapCreated: (controller) {
              _gMapController.complete(controller);
              _customInfoWindowController.googleMapController = controller;
            },
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
            compassEnabled: true,
            markers: markers,
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 75,
            width: 150,
            offset: 50,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_bike),
      ),
    );
  }

  Future<void> loadMarkers() async {
    BitmapDescriptor.fromAssetImage(
            ImageConfiguration(), "assets/images/logo.png")
        .then((value) {
      setState(() {
        markers.add(
          Marker(
            markerId: MarkerId("id1"),
            position: _camPosition.target,
            icon: value,
            /* infoWindow: InfoWindow(
              title: "My Custom Title",
              snippet: "My Custom Subtitle",
            ), */
            onTap: () {
              print("tap with marker");
              _customInfoWindowController.addInfoWindow!(
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.account_circle),
                              SizedBox(height: 30),
                              Text("I am here"),
                              InkWell(
                                onTap: () {
                                  _customInfoWindowController.hideInfoWindow!();
                                },
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                    Triangle.isosceles(
                      edge: Edge.BOTTOM,
                      child: Container(
                        color: Colors.blue,
                        width: 20.0,
                        height: 10.0,
                      ),
                    )
                  ],
                ),
                _camPosition.target,
              );
            },
          ),
        );
      });
    });
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _gMapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    markers.remove("id1");
    markers.add(Marker(markerId: MarkerId("id2"), position: _kLake.target));
  }

  Future<BitmapDescriptor> _bitmapDescriptorFromSvgAsset(
      BuildContext context, String assetName) async {
    String svgString =
        await DefaultAssetBundle.of(context).loadString(assetName);

    DrawableRoot svgDrawableRoot = await svg.fromSvgString(svgString, "");
    ui.Picture picture = svgDrawableRoot.toPicture();
    ui.Image image = await picture.toImage(126, 126);
    ByteData? bytes = await image.toByteData(format: ui.ImageByteFormat.png);

    return BitmapDescriptor.fromBytes(bytes!.buffer.asUint8List());
  }
}
