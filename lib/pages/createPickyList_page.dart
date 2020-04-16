import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CreatePickyListPage extends StatefulWidget {
  @override
  _CreatePickyListPageState createState() => _CreatePickyListPageState();
}

class _CreatePickyListPageState extends State<CreatePickyListPage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      //bearing: 192.8334901395799,
      target: LatLng(43.1028, -78.9058),
      //tilt: 59.440717697143555,
      zoom: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Picky List"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('data'),
            ),
            RaisedButton(
              child: Text('Other Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/locationFinder');
              },
            ),
            //This is a map dont enable until need. Dont want to do bunch of request
            // Expanded(
            //   child: GoogleMap(
            //     mapType: MapType.hybrid,
            //     initialCameraPosition: _kGooglePlex,
            //     onMapCreated: (GoogleMapController controller) {
            //       _controller.complete(controller);
            //     },
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('Danny\'s House!'),
        icon: Icon(Icons.home),
      ),

      // Container(
      //   child: Center(
      //     child: Text('Create Page'),
      //   ),
      // ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
