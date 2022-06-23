import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapExample extends StatelessWidget {
  const GoogleMapExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: GoogleMapStateFul(),
    );
  }
}

class GoogleMapStateFul extends StatefulWidget {
  const GoogleMapStateFul({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => GoogleMapState();
}

class GoogleMapState extends State<GoogleMapStateFul> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  var rng = Random();
  final LatLng _center = const LatLng(45.521563, -122.677433);
  late BitmapDescriptor customIcon;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    createCustomMarker();
  }

  void createCustomMarker() {
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(),
            'assets/images/ic_statistics.png')
        .then((d) {
      customIcon = d;
    });
  }

  void addMarker(LatLng latLng, BuildContext context) {
    setState(() {
      final marker = Marker(
          markerId: MarkerId(rng.nextInt(100).toString()),
          position: latLng,
          infoWindow: const InfoWindow(
            title: 'title',
            snippet: 'address',
          ),
          icon: customIcon);
      markers.add(marker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text('Google Map'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
        onTap: (LatLng latLng) {
          addMarker(latLng, context);
        },
        markers: markers,
      ),
    ));
  }
}
