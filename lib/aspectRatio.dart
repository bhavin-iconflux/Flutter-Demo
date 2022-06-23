import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('AspectRatio Widget')),
      body: Center(
        child: Container(
            width: double.infinity,
            height: 120,
            color: Colors.blue,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 0.5,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.orange,
              )
            )),
      ),
    );
  }
}
