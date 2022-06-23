import 'package:flutter/material.dart';

class InteractiveViewWidget extends StatelessWidget {
  const InteractiveViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: const Text('InteractiveView Widget')),
        body: Center(
          child: InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(20),
            minScale: 0.1,
            maxScale: 4.0,
            child: const SizedBox(
              height: 700,
              width: 500,
              // Using image from local storage
              child: FlutterLogo()
            ),
          ),
        ));
  }
}
