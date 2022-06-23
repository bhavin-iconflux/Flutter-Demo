import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:app_settings/app_settings.dart';

class LocationPackage extends StatelessWidget {
  const LocationPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('Location Class')),
        body: const LocationPackageStateful());
  }
}

class LocationPackageStateful extends StatefulWidget {
  const LocationPackageStateful({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LocationPackageState();
}

class LocationPackageState extends State<StatefulWidget> {
  LocationData? updatedLocation;
  // TODO: implement build
  Future<void> getMyLocation() async {
    final Location location = Location();
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    try {
      _permissionGranted = await location.hasPermission();
      print("Location Data updated--->${_permissionGranted}");
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
      } else if (_permissionGranted == PermissionStatus.deniedForever) {}
      final _locationData = await location.getLocation();
      print("Location Data updated--->${_locationData}");
      setState(() {
        updatedLocation = _locationData;
      });

      location.onLocationChanged.listen((LocationData currentLocation) {
        // Use current location
        print("Location Data updated--->${currentLocation}");
      });
    } on PlatformException catch (e) {

      if (e.code == 'PERMISSION_DENIED') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            action: SnackBarAction(
                label: "Go to Settings",
                onPressed: () {
                  AppSettings.openAppSettings();
                }),
            content: const Text(
                'Permission denied - please ask the user to enable it from the app settings')));
      } else if (e.code == 'PERMISSION_DENIED_NEVER_ASK') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            action: SnackBarAction(
                label: "Go to Settings",
                onPressed: () {
                  AppSettings.openAppSettings();
                }),
            content: const Text(
                'Permission denied - please ask the user to enable it from the app settings')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(const EdgeInsets.only(
                    left: 20, top: 10, right: 20, bottom: 10))),
            child: const Text('Get my location'),
            onPressed: () {
              getMyLocation();
            },
          ),
          const SizedBox(height: 10),
          updatedLocation != null
              ? Text(
                  "My Location is ${updatedLocation?.latitude} : ${updatedLocation?.longitude}",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                )
              : Container()
        ],
      ),
    ));
  }
}
